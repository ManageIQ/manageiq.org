---
title: Debugging a deadlock in ManageIQ
author: jrafanie
date: 2016-04-01 18:20:08 UTC
tags: developers, community, support
comments: true
published: true
---

In ManageIQ, we are seeing issues with our Node.js self service user interface.

After starting our appliance, we'd browse to https://IP/self_service and try to
login.  After clicking "Log In", the browser would sit idle forever...

The self service UI accesses our ManageIQ Rails rest api for things such as
what services the user is allowed to see.  The rest api is sitting behind apache
running rails 5 using puma as the web server.  Note, puma spins up threads to
process requests.

With Matthew Draper's help, I started to investigate it.

The first step was to look in our Rails production.log:

```
[----] I, [2016-03-31T18:08:12.327408 #7579:12a1074]  INFO -- : Started GET "/api/auth?requester_type=ui" for 127.0.0.1 at 2016-03-31 18:08:12 -0400
[----] I, [2016-03-31T18:08:13.767557 #7579:12a1074]  INFO -- : Processing by ApiController#show as JSON
[----] I, [2016-03-31T18:08:13.767673 #7579:12a1074]  INFO -- :   Parameters: {"requester_type"=>"ui", "collection"=>"auth"}
[----] I, [2016-03-31T18:08:13.768477 #7579:12a1074]  INFO -- : Fork detected, re-connecting child process...
[----] I, [2016-03-31T18:08:13.966210 #7579:12a1074]  INFO -- : Completed 200 OK in 198ms (Views: 0.6ms | ActiveRecord: 0.0ms)
[----] I, [2016-03-31T18:08:13.974621 #7579:12a1074]  INFO -- : Started GET "/api?attributes=authorization" for 127.0.0.1 at 2016-03-31 18:08:13 -0400
[----] I, [2016-03-31T18:08:13.992612 #7579:12a1074]  INFO -- : Processing by ApiController#show as JSON
[----] I, [2016-03-31T18:08:13.992683 #7579:12a1074]  INFO -- :   Parameters: {"attributes"=>"authorization"}
[----] I, [2016-03-31T18:08:15.895767 #7579:12a1074]  INFO -- : Completed 200 OK in 1903ms (Views: 0.4ms | ActiveRecord: 0.0ms)
[----] I, [2016-03-31T18:08:15.916145 #7579:12a1074]  INFO -- : Started GET "/api/services?filter[]=service_id=nil" for 127.0.0.1 at 2016-03-31 18:08:15 -0400
[----] I, [2016-03-31T18:08:15.943982 #7579:12a1074]  INFO -- : Processing by ApiController#show as JSON
[----] I, [2016-03-31T18:08:15.944103 #7579:12a1074]  INFO -- :   Parameters: {"filter"=>["service_id=nil"], "collection"=>"services"}
[----] I, [2016-03-31T18:08:15.989375 #7579:3e35e24]  INFO -- : Started GET "/api/services?filter[]=retired=false" for 127.0.0.1 at 2016-03-31 18:08:15 -0400
[----] I, [2016-03-31T18:08:16.010779 #7579:3e35c08]  INFO -- : Started GET "/api/services?filter[]=retired=true" for 127.0.0.1 at 2016-03-31 18:08:16 -0400
[----] I, [2016-03-31T18:08:16.029485 #7579:3e35e24]  INFO -- : Processing by ApiController#show as JSON
[----] I, [2016-03-31T18:08:16.029638 #7579:3e35e24]  INFO -- :   Parameters: {"filter"=>["retired=false"], "collection"=>"services"}
[----] I, [2016-03-31T18:08:16.054986 #7579:3e35c08]  INFO -- : Processing by ApiController#show as JSON
[----] I, [2016-03-31T18:08:16.055079 #7579:3e35c08]  INFO -- :   Parameters: {"filter"=>["retired=true"], "collection"=>"services"}
```

What is interesting is we see threads **3e35e24** and **3e35c08** in process
**7579** are both processing `ApiController#show` but never complete.

They seem to be victims of a deadlock.

So, let's see what's happening...

```
kill -19 7452  # SIGSTOP 7579's parent where it is so it doesn't kill our process
gdb --pid=7579 # connect to the problematic process


shell tty  # get the current tty's device /dev/pts/X

# close the process's existing stdout/stderr
call (void)close(1)
call (void)close(2)

# redirect stderr/stdout to the current tty (from shell tty above)
call (int) open("/dev/pts/1", 2, 0)
call (int) open("/dev/pts/1", 2, 0)

# At this point, you can inspect anything you want including evaluating ruby
# within the problematic process.

# To print the backtraces from each "alive" thread into the gdb session
call (void)rb_eval_string("puts; puts; Thread.list.each {|t| puts t.backtrace; puts }")
```

Some of the "victim" threads had the following backtrace where renderer.rb:204 needs to
autoload the Rbac constant:

```
/opt/rubies/ruby-2.2.4/lib/ruby/2.2.0/monitor.rb:110:in `sleep'
/opt/rubies/ruby-2.2.4/lib/ruby/2.2.0/monitor.rb:110:in `wait'
/opt/rubies/ruby-2.2.4/lib/ruby/2.2.0/monitor.rb:110:in `wait'
/opt/rubies/ruby-2.2.4/lib/ruby/2.2.0/monitor.rb:122:in `wait_while'
/opt/rubies/ruby-2.2.4/lib/ruby/gems/2.2.0/bundler/gems/rails-168836772753/activesupport/lib/active_support/concurrency/share_lock.rb:49:in `block (2 levels) in start_exclusive'
/opt/rubies/ruby-2.2.4/lib/ruby/gems/2.2.0/bundler/gems/rails-168836772753/activesupport/lib/active_support/concurrency/share_lock.rb:153:in `yield_shares'
/opt/rubies/ruby-2.2.4/lib/ruby/gems/2.2.0/bundler/gems/rails-168836772753/activesupport/lib/active_support/concurrency/share_lock.rb:48:in `block in start_exclusive'
/opt/rubies/ruby-2.2.4/lib/ruby/2.2.0/monitor.rb:211:in `mon_synchronize'
/opt/rubies/ruby-2.2.4/lib/ruby/gems/2.2.0/bundler/gems/rails-168836772753/activesupport/lib/active_support/concurrency/share_lock.rb:43:in `start_exclusive'
/opt/rubies/ruby-2.2.4/lib/ruby/gems/2.2.0/bundler/gems/rails-168836772753/activesupport/lib/active_support/concurrency/share_lock.rb:115:in `exclusive'
/opt/rubies/ruby-2.2.4/lib/ruby/gems/2.2.0/bundler/gems/rails-168836772753/activesupport/lib/active_support/dependencies/interlock.rb:11:in `loading'
/opt/rubies/ruby-2.2.4/lib/ruby/gems/2.2.0/bundler/gems/rails-168836772753/activesupport/lib/active_support/dependencies.rb:37:in `load_interlock'
/opt/rubies/ruby-2.2.4/lib/ruby/gems/2.2.0/bundler/gems/rails-168836772753/activesupport/lib/active_support/dependencies.rb:358:in `require_or_load'
/opt/rubies/ruby-2.2.4/lib/ruby/gems/2.2.0/bundler/gems/rails-168836772753/activesupport/lib/active_support/dependencies.rb:511:in `load_missing_constant'
/opt/rubies/ruby-2.2.4/lib/ruby/gems/2.2.0/bundler/gems/rails-168836772753/activesupport/lib/active_support/dependencies.rb:203:in `const_missing'
/opt/rubies/ruby-2.2.4/lib/ruby/gems/2.2.0/bundler/gems/rails-168836772753/activesupport/lib/active_support/dependencies.rb:543:in `load_missing_constant'
/opt/rubies/ruby-2.2.4/lib/ruby/gems/2.2.0/bundler/gems/rails-168836772753/activesupport/lib/active_support/dependencies.rb:203:in `const_missing'
/opt/rubies/ruby-2.2.4/lib/ruby/gems/2.2.0/bundler/gems/rails-168836772753/activesupport/lib/active_support/dependencies.rb:543:in `load_missing_constant'
/opt/rubies/ruby-2.2.4/lib/ruby/gems/2.2.0/bundler/gems/rails-168836772753/activesupport/lib/active_support/dependencies.rb:203:in `const_missing'
/var/www/miq/vmdb/app/controllers/api_controller/renderer.rb:204:in `collection_search'
```

Note, the interlock.rb is used for autoloading constants.

For example, to print the new rails 5 interlock

```
call (void)rb_eval_string("p ActiveSupport::Dependencies.interlock")
```

It looked something like this:
```
#<ActiveSupport::Dependencies::Interlock:0x0000000a24d1c8
  @lock=#<ActiveSupport::Concurrency::ShareLock:0x0000000a24d178
  @mon_owner=nil,
  @mon_count=0,
  @mon_mutex=#<Mutex:0x0000000a24d128>,
  @cv=#<MonitorMixin::ConditionVariable:0x0000000a24d100
  @monitor=#<ActiveSupport::Concurrency::ShareLock:0x0000000a24d178 ...>,
  @cond=#<Thread::ConditionVariable:0x0000000a24d0d8>>,
  @sharing={
    #<Thread:0x00000007ae8c18@/opt/rubies/ruby-2.2.4/lib/ruby/gems/2.2.0/gems/puma-2.16.0/lib/puma/thread_pool.rb:61 dead>=>1,
    #<Thread:0x00000007ae9230@/opt/rubies/ruby-2.2.4/lib/ruby/gems/2.2.0/gems/puma-2.16.0/lib/puma/thread_pool.rb:61 dead>=>1,
    #<Thread:0x00000007ac9f48@/opt/rubies/ruby-2.2.4/lib/ruby/gems/2.2.0/gems/puma-2.16.0/lib/puma/thread_pool.rb:61 dead>=>1},
  @waiting={
    #<Thread:0x000000025420e8@/opt/rubies/ruby-2.2.4/lib/ruby/gems/2.2.0/gems/puma-2.16.0/lib/puma/thread_pool.rb:61 sleep>=>[:load, [:load]],
    #<Thread:0x00000007c6bc48@/opt/rubies/ruby-2.2.4/lib/ruby/gems/2.2.0/gems/puma-2.16.0/lib/puma/thread_pool.rb:61 sleep>=>[:load, [:load]],
    #<Thread:0x00000007c6b810@/opt/rubies/ruby-2.2.4/lib/ruby/gems/2.2.0/gems/puma-2.16.0/lib/puma/thread_pool.rb:61 sleep>=>[:load, [:load]]}, @exclusive_thread=nil, @exclusive_depth=0>>
```

Note, if you look at the threads in the `@sharing` instance variable, you'll see they're dead threads and they're holding a lock.

With this information, we instrument the [ActionDispatch::Executor](https://github.com/rails/rails/blob/7b82e1c77b48cb351da4e0ed6ea0bac806d4925c/actionpack/lib/action_dispatch/middleware/executor.rb#L9-L17),
which handles acquiring a lock in the run! method and returning the lock in the complete! method.

With some puts debugging in the Rails logger, we can try Matthew's hunch that an exception is raised and not caught in the `@executor.run!`.

```diff
diff --git a/actionpack/lib/action_dispatch/middleware/executor.rb b/actionpack/lib/action_dispatch/middleware/executor.rb
index 06245b4..4f24fe1 100644
--- a/actionpack/lib/action_dispatch/middleware/executor.rb
+++ b/actionpack/lib/action_dispatch/middleware/executor.rb
@@ -7,12 +7,30 @@ def initialize(app, executor)
     end

     def call(env)
+Rails.logger.info "XXX #{Thread.current.inspect} #{__method__} before run!"
+begin
       state = @executor.run!
+rescue => err
+  Rails.logger.info "XXX #{Thread.current.inspect} #{__method__} run! rescue, before app.call, error: #{err}."
+  raise
+ensure
+  Rails.logger.info "XXX #{Thread.current.inspect} #{__method__} run! ensure, before app.call"
+end
+
+Rails.logger.info "XXX #{Thread.current.inspect} #{__method__} after run!, before app.call"
       begin
         response = @app.call(env)
+Rails.logger.info "XXX #{Thread.current.inspect} #{__method__} after app.call, before state.complete!"
         returned = response << ::Rack::BodyProxy.new(response.pop) { state.complete! }
+Rails.logger.info "XXX #{Thread.current.inspect} #{__method__} after state.complete!, returned: #{returned.inspect}"
+returned
       ensure
-        state.complete! unless returned
+        unless returned
+Rails.logger.info "XXX #{Thread.current.inspect} #{__method__} before ensure state.complete!, returned: #{returned.inspect}"
+          ret = state.complete!
+Rails.logger.info "XXX #{Thread.current.inspect} #{__method__} after ensure state.complete!, returned: #{returned.inspect}"
+          ret
+        end
       end
     end
   end
```

Here is a snippet:

```
[----] I, [2016-03-31T18:08:16.029485 #7579:3e35e24]  INFO -- : Processing by ApiController#show as JSON
[----] I, [2016-03-31T18:08:16.029638 #7579:3e35e24]  INFO -- :   Parameters: {"filter"=>["retired=false"], "collection"=>"services"}
[----] I, [2016-03-31T18:08:16.054986 #7579:3e35c08]  INFO -- : Processing by ApiController#show as JSON
[----] I, [2016-03-31T18:08:16.055079 #7579:3e35c08]  INFO -- :   Parameters: {"filter"=>["retired=true"], "collection"=>"services"}
[----] I, [2016-03-31T18:08:25.938834 #7579:3d7460c]  INFO -- : XXX #<Thread:0x00000007ae8c18@/opt/rubies/ruby-2.2.4/lib/ruby/gems/2.2.0/gems/puma-2.16.0/lib/puma/thread_pool.rb:61 run> call run! rescue, before app.call, error: could not obtain a connection from the pool within 10.000 seconds (waited 10.001 seconds); all pooled connections were in use.
```

The important part is this:
```
...call run! rescue, before app.call, error: could not obtain a connection from the pool within 10.000 seconds
```

So, the key takeaways:
 * The rescue around the `@executor.run!` caught and logged a connection pool timeout exception before re-raising
 * This is exactly what Matthew guessed and will require a rework of the interlock to ensure exceptions raised while we have this interlock ensure the lock is released
