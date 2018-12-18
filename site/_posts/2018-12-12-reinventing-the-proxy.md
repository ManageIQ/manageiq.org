---
title: "Reinventing the proxy for our remote consoles"
author: skateman
date: 2018-12-12
comments: true
published: true
tags: ruby developers
---

Hello everyone, my name is David and I would like to tell you a story that started two years ago. Back in 2016 when ManageIQ was running on Rails 4.2 and the Rails 5 was in beta was when I started looking into [ActionCable](https://weblog.rubyonrails.org/2015/12/18/Rails-5-0-beta1/) and WebSockets in general. I had this vision of having asynchronous notifications being emitted from long-running backend jobs that we could display on the frontend as notifications. In the meantime I had some bugs assigned to me about browser-based remote consoles. As you can guess, these consoles were also powered by WebSockets and I had a feeling that I could do some improvements in the area.

Remote desktop consoles like [VNC](https://en.wikipedia.org/wiki/Virtual_Network_Computing), [SPICE](https://en.wikipedia.org/wiki/Simple_Protocol_for_Independent_Computing_Environments) or [RDP](https://en.wikipedia.org/wiki/Remote_Desktop_Protocol) are using bidirectional TCP streams for data transfer. On the other hand, HTTP is a request-response protocol with a much shorter connection lifetime. However, thanks to the [WebSocket](https://en.wikipedia.org/wiki/WebSocket) standard it is possible to upgrade a HTTP request to a bidirectional stream. By using a [WebSocket-to-TCP proxy](https://github.com/novnc/websockify), it is possible to forward a remote console connection to a web browser. If the browser has access to a JavaScript library that implements the chosen protocol, it is possible to render a remote screen into an HTML5 \<canvas\> element.

Our architecture is similar to the one described above. The proxy process was written in Python and it was forked from Ruby each connection on a separate TCP port. This port had to be opened on the firewall, so the browser could connect to it directly. It was not an ideal solution, but it worked. I envisioned a proxy that runs inside the Ruby world as a Rack server, so it could be mounted into our Rails application as a route. The browser visits a URL inside our domain and the WebSocket request just gets forwarded to the right endpoint.

The inspiration for the Ruby implementation came from ActionCable. The Rack webserver exposes a socket hijacking interface that is able to expose the underlying socket of an HTTP request. The recipe is simple: if an HTTP request contains an "Upgrade: websocket" header, hijack the socket and return the worker thread for handling other requests. In the meantime initiate a connection to the other endpoint and when both sockets are available, pass them further to the proxy. In code it would look something like this:

```ruby
def call(env)
  if env['HTTP_UPGRADE'] = 'websocket'
    ws_sock = env['rack.hijack'].call
    console_sock = SystemConsole.find_by!(:url_secret => env['REQUEST_URI'])

    @proxy.push(ws_sock, console_sock)

    return [200, {}, [""]]
  else
    return [500, {}, ["ERROR"]]
  end
end
```

The proxy itself needs to outlive a Rack request handling, however, it cannot run in a separate context as it needs to access the sockets. This can be easily achieved by using a  thread, even if threads are not the strongest side of Ruby due to the [GVL](https://en.wikipedia.org/wiki/Global_interpreter_lock). The job of the proxy is to transmit between one or more socket pairs with translation between WebSocket and regular TCP. A naive implementation could be to use a pair of threads for a pair of sockets with blocking read and write:

```ruby
class Proxy
  def push(ws_sock, console_sock)
    Thread.new do
      loop do
        data = ws_sock.read(1024)
        console_sock.write(translate_ws(ws_data))
      end
    end

    Thread.new do
      loop do
        data = sock.read(1024)
        ws_sock.write(translate_console(data))
      end
    end
  end
end

```
The problems appear when having more clients, e.g. with the SPICE protocol that require more than a single connection to operate. By using non-blocking read and write it is enough to have a single thread that implements the [reactor pattern](https://en.wikipedia.org/wiki/Reactor_pattern). This thread should run two repeating operations in a loop: testing the readiness of sockets and transmitting data between the ready ones in a non-blocking way:

```ruby
class Proxy
  def initialize
    @pairing = {}

    Thread.new do
      loop do
        reads, writes, _ = IO.select(@sockets, @sockets, [], 0.1)
        # Iterate through the reads
        read.each do |reads|
          # Retrieve the other end and the translator method from the pairing hash
          write, translate = @pairing[read]

          # Skip the transmission if the other end is not writable
          next unless writes.include?(write)

          # Do the transmission in a non-blocking way
          data = read.read_nonblock(1024)
          write.write_nonblock(translate.call(data))
        end
      end
    end
  end

  def push(ws_sock, console_sock)
    @sockets.push(ws_sock, console_sock)

    # Pair the sockets and the translation methods
    @pairing[ws_sock] = [console_sock, method(:translate_ws)]
    @pairing[console_sock] = [ws_sock, method(:translate_console)]
  end
end
```

This implementation is really close to what we used to have in the last two years, of course with additional mutexes and error handling. As you can see, the `IO.select` was utilized to determine if a socket is ready for reading and/or writing. However, this implementation can cause a [spinlock](https://en.wikipedia.org/wiki/Spinlock) that is encoded into the usage of `IO.select` inside the `loop`. The last argument of the `IO.select` method is a timeout which states how many seconds should the thread wait if no socket is ready. This should cause our thread to sleep when there is nothing to transmit and so the computer can do other useful stuff in the meantime. The problem with this is that the `IO.select` will return from its sleep whenever a single socket is ready for transmission. In other words, `IO.select` cannot be forced to wait longer for a pair of sockets to become ready for reading and writing at least in one direction.

Even though the spinlock is just a probabilistic scenario, problems might appear by just using a single socket pair and the probability increases with the number of sockets. Let's say we have two sockets and none of them are ready for reading or writing. In this case the thread will sleep, probably for more than a single iteration. After some waiting time, one of the sockets becomes ready for writing and the `IO.select` returns from the sleep earlier. There is no data transfer, as the other endpoint is not ready for reading so the loop continues. In the next iterations the `IO.select` will immediately return with the same single writable socket and skip the transmission until the other socket becomes readable. This will cause the thread to spinlock, i.e. to waste CPU time on actively waiting for something to happen. It will not slow down the remote consoles, but everything else running on the appliance.

A solution to this is to limit the CPU usage of the proxy, however, this is not a nice (pun intended) solution. A more elegant solution could be to use an event-processing library like [EventMachine](https://github.com/eventmachine/eventmachine) or [Celluloid::IO](https://github.com/celluloid/celluloid-io). These are both nice libraries and they might work for anyone else, but we are using ActiveRecord with PostgreSQL in asynchronous mode which renders these libraries useless for us. I have to admit, I have not tried the [new approach](https://github.com/socketry/async) for awesome asynchronous IO in Ruby because I was deep in the code and really close to a working implementation when I found it. If I had to solve the problem today, I definitely would give it a try and you should too.

With the help of my colleague [Keenan](https://github.com/kbrock) we came up with the idea of a bouncing select. I was investing a lot of hours to come up with a solution, so I was really shocked when I realized that it can be explained really easily. The arrays passed to the `IO.select` should be dynamic: if a socket becomes ready for reading, it should be temporarily removed (bounced) from the first array. This forces the thread to sleep in any next iteration until a new readiness event happens. After a successful transmission between a pair of sockets, each of them should be added (bounced) back to the corresponding arrays.

```ruby
loop do
  read, write, _ = IO.select(@to_read, @to_write, [], 0.1)
  @to_read -= read
  @to_write -= write

  # Iterate through the socket pairs that are ready for transmission
  each_ready do |rd, wr|
    data = rd.read_nonblock(4096)
    wr.write_nonblock(translate(data))

    @to_read.push(rd)
    @to_write.push(wr)
  end
end
```

The performance of this solution is acceptable even with just having a few connections. As the `IO.select` needs to pass the arrays of sockets to the kernel every time it is called, the performance can drop significantly with a higher number of connections. Also the bouncing operations on the arrays add some extra overhead. These problems can be avoided by using `epoll` that uses an internal structure in the kernel space to hold the sockets we are interested in. An application can register sockets to an *epoll instance* and then in a separate call wait for events to happen. Another advantage is that by using `EPOLLONESHOT` it is possible to register a socket for a single readiness event only. This way only half of the bouncing needs to be implemented, the other half happens automatically.

There are multiple gems available that use `epoll` under the hood, unfortunately, none of them implement the aforementioned `EPOLLONESHOT` feature. This is how I ended up writing the proxy as a native extension in my favorite language, the one named after the third letter of the alphabet. The only problem with this solution is that it is supported by Linux only. Ideally we should not care about other platforms as we build our appliances with CentOS, but some of our engineers use a Mac for development. There is a very similar solution implemented in BSD-like systems called `kqueue` and it could solve this problem. Unfortunately, it requires a lot of `malloc` calls which can increase the risk of memory leaks. The final solution was to fall back to the `IO.select` on platforms that do not have `epoll` available.

The proxy itself is available as a separate gem called [surro-gate](https://github.com/skateman/surro-gate) and it has been [integrated](https://github.com/ManageIQ/manageiq/pull/18093) into ManageIQ last week. It was a two year long journey and the interesting part of the work is just starting. While playing with the socket hijacking, I found out that it can be also used to smuggle any kind of TCP traffic through an HTTP connection. This would allow us to use desktop clients to connect to remote consoles or even SSH through a ManageIQ appliance. The topic itself deserves a separate blog post that will come in the near future ...

Sources:
* [Async IO on Linux: select, poll, and epoll](https://jvns.ca/blog/2017/06/03/async-io-on-linux--select--poll--and-epoll/)
* [The Implementation of epoll (1)](https://idndx.com/2014/09/01/the-implementation-of-epoll-1/)
