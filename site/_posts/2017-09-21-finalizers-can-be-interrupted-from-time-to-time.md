---
title: Finalizers can be interrupted from time to time
author: jrafanie
date: 2017-09-28 19:05:09 UTC
comments: true
published: true
tags: developers
---

## A Tale As Old As Time
So, this has been [documented](http://blog.headius.com/2008/02/rubys-threadraise-threadkill-timeoutrb.html)
[many](http://www.mikeperham.com/2015/05/08/timeout-rubys-most-dangerous-api/) [times](https://jvns.ca/blog/2015/11/27/why-rubys-timeout-is-dangerous-and-thread-dot-raise-is-terrifying/) before.

Even though we all know that ruby's `Timeout.timeout` is not threadsafe and
`Thread#raise` can and will interrupt your ensure/rescue code on a Friday at 5 pm,
it's still around in the libraries we use.

Note, I even filtered out some of the results below:

```console
$ grep -r -E "\bTimeout.timeout\b" /Users/joerafaniello/.gem/ruby/2.4.2/gems
ruby_parser-3.10.1/lib/ruby_parser_extras.rb:                                     Timeout.timeout time do
capybara-2.5.0/lib/capybara/server.rb:                                            Timeout.timeout(60) { @server_thread.join(0.1) until responsive? }
dalli-2.7.6/lib/dalli/socket.rb:                                                  Timeout.timeout(options[:socket_timeout]) do
excon-0.59.0/lib/excon/socket.rb:                                                 Timeout.timeout(@data[:read_timeout]) do
excon-0.59.0/lib/excon/unix_socket.rb:                                            Timeout.timeout(@data[:connect_timeout]) do
fog-core-1.45.0/lib/fog/compute/models/server.rb:                                 result = ready? && !ssh_ip_address.nil? && !!Timeout.timeout(sshable_timeout) { ssh("pwd", options) }
hawkular-client-4.1.0/lib/hawkular/operations/operations_api.rb:                  Timeout.timeout(@wait_time) { sleep 0.1 until @ws.open? }
http-0.9.8/lib/http/timeout/global.rb:                                            ::Timeout.timeout(time_left, TimeoutError) do
http-0.9.8/lib/http/timeout/per_operation.rb:                                     ::Timeout.timeout(connect_timeout, TimeoutError) do
httpclient-2.8.3/lib/httpclient/session.rb:                                       ::Timeout.timeout(@send_timeout, SendTimeoutError) do
httpclient-2.8.3/lib/httpclient/session.rb:                                       ::Timeout.timeout(@connect_timeout, ConnectTimeoutError) do
httpclient-2.8.3/lib/httpclient/session.rb:                                       ::Timeout.timeout(@receive_timeout, ReceiveTimeoutError) do
httpclient-2.8.3/lib/httpclient/session.rb:                                       ::Timeout.timeout(@receive_timeout, ReceiveTimeoutError) do
httpclient-2.8.3/lib/httpclient/session.rb:                                       ::Timeout.timeout(@receive_timeout, ReceiveTimeoutError) do
httpclient-2.8.3/lib/httpclient/session.rb:                                       ::Timeout.timeout(@receive_timeout, ReceiveTimeoutError) do
manageiq-network_discovery-0.1.2/lib/manageiq/network_discovery/port_scanner.rb:  Timeout.timeout(ost.timeout) do
manageiq-smartstate-0.1.4/lib/metadata/VmConfig/VmConfig.rb:                      Timeout.timeout(60) do
multipart-post-2.0.0/test/test_composite_io.rb:                                   Timeout.timeout(1) do
net-ping-1.7.8/lib/net/ping/icmp.rb:                                              Timeout.timeout(@timeout){
net-ping-1.7.8/lib/net/ping/udp.rb:                                               Timeout.timeout(@timeout){
nio4r-2.1.0/spec/nio/selector_spec.rb:                                            Timeout.timeout(2) do
nio4r-2.1.0/spec/spec_helper.rb:                                                  sock = Timeout.timeout(1) { TCPSocket.new("localhost", $current_tcp_port) }
open4-1.3.4/lib/open4.rb:                                                         Timeout.timeout(timeout){ yield }
rack-2.0.3/test/spec_utils.rb:                                                    Timeout.timeout(1) do
ruby-dbus-0.13.0/spec/spec_helper.rb:                                             Timeout.timeout(10) do
snmp-1.2.0/lib/snmp/manager.rb:                                                   Timeout.timeout(@timeout) do
vcr-3.0.3/lib/vcr/util/internet_connection.rb:                                    Timeout.timeout(timeout) do
webmock-2.3.2/spec/support/network_connection.rb:                                 Timeout.timeout(timeout) do

$ grep -r -E "\bTimeout::timeout\b" /Users/joerafaniello/.gem/ruby/2.4.2/gems
open4-1.3.4/lib/open4.rb:                                                         Timeout::timeout(timeout) do
```

Those are only gems used by ManageIQ.  I'm sure there are many other gems used by other
projects that still use Timeout.

Wait a second.  We didn't actually look at the contents of the `Timeout.timeout` block.
That's the point, it doesn't matter.  If you hit this code at all, there's a small
chance it can `Thread#raise` at a very inopportune time in code that will never
expect it!

You might be thinking, "that's fine, this why I'm wrapping my code with a begin and a rescue or ensure
to clean things up."  It is a regular exception and we would expect it to be rescued while we are inside the begin
code.  But don't underestimate Murphy's law.  What if the exception is raised while we're in the cleanup code,
preventing it from completing?  To top it off, it will find the weirdest possible place to raise and at the most
unfortunate time, such as Friday at 5pm.  I'll [repeat](http://blog.headius.com/2008/02/rubys-threadraise-threadkill-timeoutrb.html)
the [links](http://www.mikeperham.com/2015/05/08/timeout-rubys-most-dangerous-api/) listed [above](https://jvns.ca/blog/2015/11/27/why-rubys-timeout-is-dangerous-and-thread-dot-raise-is-terrifying/) for convenience
because this is exactly what they show: `Thread#raise` can raise while in your ensure/rescue cleanup code.


## Fun times

A "fun" bug recently reminded [Beni](https://github.com/cben) and I of a "new" and totally awful
way `Timeout.timeout` can ruin your day.

Ironically and hilariously, Beni stumbled upon this when writing a [test to workaround the "Timeout
can raise during your ensure code"](https://github.com/ManageIQ/manageiq-gems-pending/pull/263). Ok, so
I find it funny.  I'm sure Beni didn't.

Basically, he discovered that his test would sporadically hang when run in the full test suite but not when
run in isolation.

After some serious spelunking via rspec bisect and manually minimizing the reproducer by commenting out parts of
the remaining tests, he found the hang would occur when another test created a `Tempfile`.  As soon as he put
a `Tempfile.new('x')` in the timeout workaround test, the test would hang "sometimes".

## That's it, I'm done

We minimized his test case:

```ruby
require 'tempfile'
require 'timeout'
Tempfile.new("x")

def stuff
  ""
end

20.times do |i|
  begin
    Timeout.timeout(1e-9) do
      loop do
        begin
          "result"
        ensure
        end
      end
    end
  rescue Timeout::Error => e
  end
end
```

Note: Don't ask about the `stuff` method.  Without it, I couldn't get the test to hang sporadically.

We ran it with ruby debug `RUBYOPT=-d`.

When it worked, it looked like this:

```console
Exception `Timeout::Error' at /Users/joerafaniello/.rubies/ruby-2.3.4/lib/ruby/2.3.0/timeout.rb:112 - execution expired
removing /var/folders/fq/blrz820d3qz7nm7vj8mbtfs40000gq/T/x20170906-57250-s683fs...
done
```

When it would hang, it looked like this:

```console
Exception `Timeout::Error' at /Users/joerafaniello/.rubies/ruby-2.3.4/lib/ruby/2.3.0/timeout.rb:112 - execution expired
removing /var/folders/fq/blrz820d3qz7nm7vj8mbtfs40000gq/T/x20170906-57351-jfeu6l...
```

If you're still reading, you might have noticed that `done` is missing when the
test hangs. The `done` happens after `Tempfile` wants to [close and unlink the file here](https://github.com/ruby/ruby/blob/820605ba3c10b9f4dafc4e5d6e09765b8b31cbea/lib/tempfile.rb#L255-L257).

Therefore, when it hangs, the `Tempfile` `finalizer` never completes.

tldr; `Timeout.timeout` can `Thread#raise` while in a `finalizer` for another object!  AWESOME.

## The final straw

Wait, what's a finalizer?

There is no guarantee when the ruby garbage collector will garbage collect an
object. `ObjectSpace.define_finalizer` provides a place for you to tell ruby to "run
this code when my object is to be garbage collected." Finalizers are generally used
to cleanup things so we don't cause memory leaks.  Interrupting them is probably
not something we want to troubleshoot at 5pm on a Friday.

It's ok, there aren't many places that define finalizers:

```console
$ grep -r define_finalizer /Users/joerafaniello/.rubies/ruby-2.4.2
lib/ruby/2.4.0/cgi/session.rb:                                         ObjectSpace::define_finalizer(self, Session::callback(@dbprot))
lib/ruby/2.4.0/drb/timeridconv.rb:                                     ObjectSpace.define_finalizer(Object.new) {on_gc}
lib/ruby/2.4.0/tempfile.rb:                                            ObjectSpace.define_finalizer(self, Remover.new(@tmpfile))

$ grep -r define_finalizer /Users/joerafaniello/.gem/ruby/2.4.2/gems
actionview-5.0.6/lib/action_view/template.rb:                          ObjectSpace.define_finalizer(self, Finalizer[method_name, mod])
concurrent-ruby-1.0.5/lib/concurrent/atomic/ruby_thread_local_var.rb:  ObjectSpace.define_finalizer(me, self.class.thread_finalizer(array))
concurrent-ruby-1.0.5/lib/concurrent/atomic/ruby_thread_local_var.rb:  ObjectSpace.define_finalizer(self, self.class.threadlocal_finalizer(@index))
ffi-1.9.18/lib/ffi/autopointer.rb:                                     ObjectSpace.define_finalizer(self, @releaser)
http-cookie-1.0.3/lib/http/cookie_jar/mozilla_store.rb:                ObjectSpace.define_finalizer(self, Callable[@db, :close])
logging-2.2.2/lib/logging.rb:                                          ObjectSpace.define_finalizer self, Logging.method(:shutdown)
tins-1.15.0/lib/tins/thread_local.rb:                                  ObjectSpace.define_finalizer(self, @@cleanup)
vcr-3.0.3/lib/vcr/library_hooks/webmock.rb:                            ObjectSpace.define_finalizer(Thread.current, lambda {
winrm-2.2.3/lib/winrm/shells/base.rb:                                  ObjectSpace.define_finalizer(
```

It's a small list but libraries like tempfile, concurrent-ruby, ffi, actionview,
etc. are pretty common.  Again, this is only in the gems that ManageIQ uses.  This
list will certainly grow if you searched dependencies of other applications.

The ugly part of this story is that the finalizer and the `Thread#raise` are both async operations so they can happen
at nearly any time.  We caught this in a test, but this could happen in development or even production and is really difficult
to reason about because the symptoms could be nearly anything.

## All in good time

We opened a ruby bug that Tempfile's finalizer can be interrupted by Timeout's `Thread#raise`.
[It was found that Timeout can raise in any finalizer, not just Tempfile](https://bugs.ruby-lang.org/issues/13876#note-1).

This is a reminder to rid your codebase and dependencies of `Timeout` and perhaps `Timeout`, which still lives in Ruby's
standard library, will be fixed or replaced.

Finally, there's a [guide on how to configure safe timeouts in various libraries](https://github.com/ankane/the-ultimate-guide-to-ruby-timeouts).  Please try it out and contribute
to it.
