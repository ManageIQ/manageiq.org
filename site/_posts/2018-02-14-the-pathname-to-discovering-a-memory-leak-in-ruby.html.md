---
title: The Path[name] to discovering a memory leak in Ruby
author: NickLaMuro
date: 2018-02-14
tags: ruby developers
comments: true
published: true
---


_**tl;dr** we found a [memory leak in
Ruby](https://bugs.ruby-lang.org/issues/14372)... and it mostly wasn't our
fault!_

This is a tale of that 0.00001% of the time where a problem is actually an
issue in the language, and not with your own code base - though, it was a bit
of that as well!  We went through [every][1] [possible][2] [blog][3] [post][4]
on the subject (and [then][5] [some][6]), none of which really covered our
issue that took us roughly 4 months of pain, misery, and suffering to solve.
Here is what we learned during that time, and the process we took to uncover
this memory leak.


Step 1:  Reproducing the issue
------------------------------

The initial issue that was brought to our attention was that there was a leak
in our `MetricsCollector` and `MetricsProcessor` workers\*.  This was a trickle
leak where we would leak roughly 5-10 MB per hour and over time this would
cause the workers to exceed memory thresholds and restart.  This did require
some extra setup to replicate as well, as we needed something to simulate
adding jobs for these workers to collect/process metrics from so they had work
to do.

Since these are both "queue based" workers, this meant the work that they did
was dependent on external factors, and wasn't always a linear amount of work
passed to the queue, making the growth variable and not consistent.  On top of
that, the jobs that caused the leak seemed to be at random, and instrumenting
the code to determine the leak was hard to do in a generic fashion. That is not
to say we didn't try wrap our workers with some common Ruby profiling tools (we
did... many times...), but the result usually led us to wonder if were actually
dealing with the ["Observer effect"][7] and introducing new problems instead of
"observing" existing ones.

Although it took much more time for it to be truly observed (around a month's
time), we also found that the `MIQ Server` (our worker monitor process) was
leaking as well.  Since it had a more predictable workflow, this was the better
candidate to do some deeper process of elimination testing.  It took some time
to get a scenario where this was leaking consistently, but once we did it was
simpler to do A/B testing with it.


Step 1.5:  Reproducing the issue... fasterer
--------------------------------------------

One problem with using the `MiqServer` process as the target for observing the
leak is it took _**days**_/_**weeks**_ to determine if it was leaking or just
the process taking it's sweet time time to stabilize it's memory usage.  This
led to very long gaps between making a change and having observable results to
view from it.

One of the least invasive things that we eventually did was decrease the server
`:monitor_poll` and `:worker_monitor_frequency` values from `"5.seconds"` and
`"15.seconds"` respectively to `"1.second"` for both.  This decreased the wait
time between each iteration of it's normal work and thankfully increased the
leak rate.

We also increased the frequency of normal method calls by doing things like
`40.times { do_some_work }` in places where we thought the leak might be, and
if there was rapid growth, we knew where to probe deeper.

The suggestions in this step happened for us throughout the process of
discovering the cause of the leak, and didn't necessarily happen in between
this step and the next (hence the "Step 1.5").  Steps to accelerate the
feedback loop, such as this, should be done as early into the memory leak
debugging process as possible.


Step 2:  Narrowing down the culprits
------------------------------------

As mentioned previously, the `MiqServer` process has a pretty regular work
loop.  In case you aren't familiar with the workflow of the `MiqServer` work
loop, here is a gist of the important steps:

1. heartbeat (tell other servers that I am still alive)
2. process any messages sent to the server process over the message queue
3. check on the health status of other server processes (and log them)
4. check the status of all of the workers processes (stop/start them as needed)
5. fetch queue work to assign to worker processes

Each of these steps happen in varying intervals and happen on a mostly
consistent basis, barring any database latency fluctuations or worker changes.

After trying to instrument the main loop with tools like `MemoryProfiler`,
`stackprof`, and even just looking at regular Ruby memory dumps using
`ObjectSpace.dump_all`.  In the end, we up taking a more low tech approach of
just removing code by commenting out the steps above and seeing if the leak
still happened after a server restart.

To start off, we already had a baseline of what it looked like with the code
uncommented, and it leaked pretty consistently, so we did the inverse and
commented out all of the steps above to confirm the leak stopped (it did,
thankfully).  We then worked our way back to the baseline by re-adding the
methods one by one, and observing if the leak returned.  After doing that a few
times, we eventually determined that uncommenting the
`MiqServer#monitor_workers` code (step #4 from the list above) was the cause.
Progress!

Now, `MiqServer#monitor_workers` is [pretty dense][8], so this wasn't the end
of the line, but it allowed us to start drilling in further and try some other
tests outside the context of the application.


Step 3:  First Observations
---------------------------

The tricks from step #1.5 were applied at this point, and we started making
some more nuanced observations about what affected the leak:

* The server seemed to leak faster with more workers forked and monitored by
  the server process. This meant to us that it was probably calling a method
  that was dependent on the number workers.
* While adding some instrumentation to do some regular `GC.start`s and logging
  of `GC.stat`, we noticed the number of Ruby objects didn't really increase
  (some custom caching that we do caused us to question this for a bit).
* The `[heap]` in `/proc/<PID>/smaps` was the only thing growing.  Combined
  with the info from the last bullet, this meant that the leak surely had to be
  in a c-extension, or Ruby itself.  (an important observation made by Joe
  Rafaniello)
* None of the suspected code looked to be a possible cause of a leak so it was
  probably something specific to our environment.

Those were all important observations, but the last one was a double-edged
sword.  Throughout this process, we continued to hold the mindset that "this
has to be something with our code", and it led us to going down a lot of wrong
rabbit holes searching for answers that re-enforced that bias.


Step 4:  Lots of failure, torment, and agony
--------------------------------------------

At this point we started looking outside of the ManageIQ code base and started
writing scripts to try to reproduce the leak in a more targeted fashion.  These
scripts can be found [here][9] and mostly failed to reliably recreate the leak.

Of note: one the places we got hung up on was thinking `DRb`, which we use for
light message passing between workers, was the culprit.  This mostly came from
the thought that most people aren't using it in production for anything
terribly complicated, but for us, it was how key features like heartbeating
were implemented. Additionally, this would have explained why the leak was
worse with more worker processes forked and monitored as was previously
observed.

We also found that `sync_workers` seemed to cause the server to leak quicker
when wrapped with a `40.times {}` block.  This was eventually proven to not be
the case as well, but did lead us down a path of trying some more obscure ways
of testing our theories.


Step 5:  We need to go deeper...
--------------------------------

At this point, we were about 4 months into digging into this.  The rest of this
article happened in the last week prior to discovering the Ruby leak, but they
are the good parts!

I ended up running across [this blog post][4] by Nelson Elhage
([@nelhage](https://github.com/nelhage)), which ended up giving us an idea
how to use `gdb` to hook into an existing process and run some arbitrary Ruby
code in the existing environment.

The technique described in the blog post to find that memory leak was actually
to take a look at the core dumps as hex and determine where patterns of leaked
memory were.  We weren't that smart to be able to understand that ourselves or
make use of it properly in our case, but we did end up using the
`rb_eval_string("")` portions to our advantage though, and that ended up being
super useful.

At the time, we were under the impression that `MiqServer#sync_workers` was the
culprit, so we ended up attaching to an existing 'warmed up' server process
that had been running for a bit so most of the code it would load would already
be autoloaded.  With that, we tried running a high number of invocations of
that method in a row, and watched the `/proc/<PID>/smaps` to see if the
`[heap]` section grew.  It looked something like this\*\*:

```console
$ gdb -p [PID_OF_THE_MIQ_SERVER_PROCESS]
(gdb) p rb_eval_string("GC.start")
(gdb) p rb_eval_string("500.times { MiqServer.my_server.sync_workers; GC.start }")
```

Nothing.  Not even a budge.  Well shoot... there goes that theory.  

At this point, we looked back to the servers we had running that were modified
with the  known "non-leaking" portions commented out, and checked if there was
anything else that we might have been missing.  We noticed that in addition to
`MiqServer#sync_workers` still being uncommented, a call to
`MiqWorker.status_update_all` that was directly preceding it was also still
being executed.

Now, on it's own, this method looks seemed pretty tame. Effectively it:

1. Uses basic ActiveRecord to fetch all the workers under the current server 
2. Makes a call to our own code to fetch usage data for the given worker pids
3. Saves the data to the DB records for internal reporting/monitoring

The first and last bits were ruled out, and we were pretty sure we already
tested the middle bit via some scripts outside of the context of ManageIQ, but
for verbosity sake, using the same `gdb` process, we decided to update the
`500.times {}` block to include that call:

```ruby
MiqServer.my_server.sync_workers; MiqWorker.status_update_all; GC.start 
```

And... it leaked... !?



Step 6:  Wait... wut!? (aka:  Replicating it without the app)
-------------------------------------------------------------

At this point, we started to look at the call to
`MiqProcess.processInfo(worker_pid)` in `MiqWorker.status_update_all` since the
other areas are mostly ActiveRecord.  Besides:  it's easier to blame our own
libraries. ;)

Now you might be thinking "that was your code... why didn't try that in the
first place", let me explain.  We had tried something similar in a test script
with no leak, but ended up trying it again.  The first draft of the script
looked basically like this:

```ruby
# Code needed to get MiqProcess.processInfo loaded and working
require 'manageiq-gems-pending'
require 'util/miq-process'
require 'active_support/all'

pid = ARGV[0]

loop do
  MiqProcess.processInfo(pid)
  GC.start
  sleep 0.5
end
```

Unfortunately, it didn't leak...

┻━┻ ︵ヽ(\`Д´)ﾉ︵ ┻━┻

...

┬──┬ ノ(ò\_óノ)

Well crap...

That is when Keenan Brock (who I was pairing with at the time) had a brilliant
idea, where he suggested that we include a call to `require
'config/environment.rb'` to load and initialize our Rails app, and then run the
script again.  What do you know, it leaked!  And on a regular basis as well!

From there, we narrowed down what the core components of `.processInfo` were,
and ran each bit overnight and logged the `[heap]` section of the
`/proc/<PID>/smaps` overtime.  The leaky section ended up being a call to
`MiqSystem.num_cpus`, and the code for that method can be seen below:

```ruby
def self.num_cpus
  return unless Sys::Platform::IMPL == :linux
  require 'linux_admin'
  @num_cpus ||= LinuxAdmin::Hardware.new.total_cores
end
```

Looks completely harmless... what gives!

Well, this method does a no-op if we weren't testing on linux (we were), and we
also tested calls to `Sys::Platform::IMPL` separately, and that was in the
clear.  The only time any "work" is done in this method would be the first time
this method was called, and that work is short circuited once the cached value
is set.

This left the `require` call.  We updated the script above to include `require
'config/environment'` and replaced `MiqProcess.processInfo(pid)` with `require
'linux_admin'` and ran it.

It leaked...

ಠ\_ಠ



Step 7:  Mind blown
-------------------

After piecing our heads back together, we noticed a few things:

* Again, without `require 'config/environment'` at the top, no problems,
  meaning our environment was at play... at least a bit.
* No matter what we called `require` with, it leaked just the same\*\*\*.
* We could also recreate this on non-linux operating systems

The second bit should come as no surprise, because after calling require on the
same file twice, the code isn't reloaded if Ruby determines it has already been
loaded (hence the difference in return values if you do that in IRB as well:
`true` for the first time, and `false` every time thereafter).

But still, that means we have a leak in Ruby... right?  But with `require`?
How has no one run into this before?  Could a c-extension be messing with
things here or is Ruby the culprit?

At this point, we tried a few different profiling techniques:

* I personally used `gdb` again using a [crazy python gdb script][10] I cobbled
  together
* some co-workers used the [`Instruments` application][11] to do basically the
  same thing (but with less upfront work of writing their own script/framework)
* we even wrapped the require call using good-ole `ruby-prof`

After a couple of us were trying the above, we noticed that a common thread
between them all when the leak was present: `Pathname`. This was observed in
two main ways:

* when using `ruby-prof`, `require` was spending a decent amount of time in
  `Pathname#to_path` for each `require` call
* in "C land" where `rb_get_expanded_load_path` was showing up in the stack
  of the `malloc` calls of `require` when it was leaking.

We still weren't completely sure if this was a Ruby or gem issue.  Finally,
with a final bit of trial and error (again, props to Joe Rafaniello for this
find), we noticed that if we called `.to_s` on ALL of the places that we added
a `Pathname` value to our `autoload_paths` in our Rails Application/Engine
configs, the leak disappeared!  Hooray!

With this, we quickly ruled out `Rails` being the issue here because we could
replicate using a simple Ruby script:

```ruby
require 'pathname'

puts Process.pid
$LOAD_PATH.unshift(Pathname.new(__dir__))

dot      = "."
filename = "ostruct"
1000.times { 1000.times { require filename }; print dot; GC.start; }
```

And we confirmed that Rails even adds `autoload_paths` to the `$LOAD_PATH` [in
an initializer][12], so this was clearly a Ruby bug.  We tested across multiple
versions of Ruby and determined that only rubies 2.3.x and 2.4.x were
exhibiting the leak (apparently this was fixed in Ruby 2.5.0\*\*\*\*).


Other Observations/Conclusions
------------------------------

MIQ is a pretty heavily QA tested application across versions, so we could
definitely see from one version to the next that this leak started after our "E
release" (we are now on "G"), which was the first release using Ruby 2.3.x.

Also, as mentioned, this is a very rare situation where the programming
language, Ruby, was actually at fault here (we can safely admit that the
developers of Ruby are WAY smarter than us, so this is generally a safe
assumption).  Now, there is an assumed asterisk that goes along with this
statement for a few reasons:

* Most developers tend to place `require` statements at the top of files, so
  they aren't triggered constantly like it was in our case.  We did this for
  #Reasons™, but in short, this was mostly used to solve other deficiencies of
  our monolith application that could have been solved in other ways.
* The Rails guides tend to show using `Strings` when setting `autoload_paths`,
  and so it is less likely developers will use "deferred requires" like this
  and also have `Pathname` entries in their `$LOAD_PATH`.

There is even a bit of a note in the Ruby source of [`load.c`][13] that even
mentions that non-string values in the load path are expanded every time and
not cached, so it seems that using `Pathname` values in the `$LOAD_PATH` is
somewhat discouraged.

Bottom line:  Still kinda our fault in the end...

* * *

Well, at the very least, hopefully you found this blog post entertaining, and
possibly you can learn from our successes, and TONS of failures, if you find
yourself trying to unravel your own memory leaks or other weird performance
bugs!  The key was to continually look at the issue from different
perspectives, with various tools, and of course, sleep on it and come back at
it with renewed vigor and a clear mind.

A big thanks to Joe Rafaniello, Keenan Brock, Dennis Metzger, and Jason Frey
for their contributions in helping to find this leak.  I happen to be the one
documenting this experience (_**epic adventure**_\*\*\*\*\*), but it was
definitely a team effort over many months.



* \* For those unfamiliar with ManageIQ/CFME, these are queue based workers,
  the first of which "Collects" metrics from an infrastructure provider (VMs,
  Containers, Instances, etc.) managed by ManageIQ, and sends it to the
  "Processor" in a generic fashion that it can be imported into our DB schema.
* \*\* The `GC.start` calls here are to avoid typical memory usage of Ruby
  objects being allocated normally from improperly skewing the results.
* \*\*\* The reason for these "deferred requires" is for base memory savings.
  Since `linux_admin` is only needed by a small portion of our code base, but
  adds around 5 to 10 MB when loading it, we only load it when we need it.
* \*\*\*\* Note, Ruby 2.5.0 might not leak but Pathnames are much slower in the
  `$LOAD_PATH` than strings, perhaps, because they're not cached as mentioned
  [here][13].
* \*\*\*\*\* Over selling this quite a bit here... \| (• ◡•)\|/\\(❍ᴥ❍ʋ)




[1]:  http://www.be9.io/2015/09/21/memory-leak/
[2]:  https://samsaffron.com/archive/2015/03/31/debugging-memory-leaks-in-ruby
[3]:  https://engineering.shopify.com/blogs/engineering/adventures-in-production-rails-debugging
[4]:  https://blog.nelhage.com/2013/03/tracking-an-eventmachine-leak/
[5]:  https://jvns.ca/blog/2016/06/12/a-weird-system-call-process-vm-readv/
[6]:  https://nativecoding.wordpress.com/2016/07/31/gdb-debugging-automation-with-python/
[7]:  https://en.wikipedia.org/wiki/Observer_effect_(physics)
[8]:  https://github.com/ManageIQ/manageiq/blob/fde3d11/app/models/miq_server/worker_management/monitor.rb#L15-L38
[9]:  https://github.com/NickLaMuro/miq_tools/tree/master/miq_server_leak_discovery
[10]: https://github.com/NickLaMuro/miq_tools/blob/master/miq_server_leak_discovery/gdb_mem_debugging.py
[11]: https://developer.apple.com/library/content/documentation/DeveloperTools/Conceptual/InstrumentsUserGuide/index.html
[12]: https://github.com/rails/rails/blob/20c9111/railties/lib/rails/engine.rb#L555-L560
[13]: https://github.com/ruby/ruby/blob/429e2ab/load.c#L44-L48
