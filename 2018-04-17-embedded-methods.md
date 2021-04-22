---
title: Embedded Methods 
date: 2018-04-17
tags: cloudformsautomate cfme cloudforms methods 
author: ConnorJGilchrist
---

One of the exciting new features in [CloudForms 4.6] [https://www.redhat.com/en/blog] within Automate is Embedded Methods. That is, one can store reusable, directly callable, ruby code within Automate and access from other Automate Methods.
(In an attempt to maintain some sanity, I’m capitalizing words like Method when in the Automate sense, and leaving them lowercase when referring to the wholly unrelated ruby use).
In my experimentation with [Unit Testing] [https://github.com/jeffwarnica/manageiq-content-sample-tests], I’ve developed a reasonable and, I think, future proof process for doing this. The implementation is very flexible, allows for multiple Methods to be embedded in the caller. Otherwise, I think, ad-hoc conventions could cause a lot of trouble if not used with some rigor.
From the Calling Method, there is a new area in the UI to load in additional Methods. You may embed multiple Methods, but the embedding is not recursive; that is, if the target Method is configured to embed Methods, those will not be loaded.
The method-to-be-Embedded, which I’ll call the Library Method needs no special configuration, though my strategy does require both methods to be coded in the [new style using classes] [https://github.com/ManageIQ/manageiq-content/issues/8].  The Library Method couldhave “bare code”, that is, code not even in a ruby method, but that would almost always be a bad idea, as it would run unconditionally and be nigh impossible to troubleshoot.
The ruby module/module/module namespaces match the Automate Domain/Namespace/Namespace/Class names. The Library Method’s name is not relevant. It is probably a good idea too, when configuring the calling Method, to always include the Domain Prefix in the method.
I give you a sample (and use case #1) Library method:
(#
(# Description: Core StdLib
(#
module Cflab
  module StdLib
   module Core
   def initialize(handle = $evm)
     @handle = handle
   end
   def log(level, msg, update_message = false)
     @handle.log(level, "#{msg}")
     @handle.task.message = msg if @task && (update_message || level == 'error')
   end
   def dump_root()
     log(:info, "Begin @handle.root.attributes")
     @handle.root.attributes.sort.each {|k, v| log(:info, "\t Attribute: #{k} = #{v}")}
     log(:info, "End @handle.root.attributes")
     log(:info, "")
   end
   end
  end
end
Note significantly, that the ruby methods are not part of a class, but a module. This makes the module, in ruby speak, a mixin.  You don’t need the initialize() method unless you also plan on unit testing the code.
In the Calling Method’s class, you must include the ruby Module above, which brings in the ruby methods into the same namespace, e.g. include Cflab::StdLib::Core per below.
module Cflab
  module DynamicDialogs
    module Methods
    #
    # Method for listing AWS flavors for a drop down.
    #
    class List_flavors
    include Cflab::StdLib::Core
    def initialize(handle = $evm)
    @handle = handle
    end

    #
    # Actual entry point the bare script will call into. Outputs into @handle
    #
    def main
    @user = @handle.root['user']
    dialog_hash = {}
    dump_root()
    @handle.vmdb(:ManageIQ_Providers_Amazon_CloudManager_Flavor).all.each do |flavor|
         next unless flavor.ext_management_system || flavor.enabled
         next unless object_eligible?(flavor)
         @handle.log(:info, "Inspecting flavor: [#{flavor}]")
         dialog_hash[flavor.id] = "#{flavor.name} on #{flavor.ext_management_system.name}"
    end
    if dialog_hash.blank?
         dialog_hash[''] = "< no flavors found >"
         @handle.object['default_value'] = '< no flavors found >'
    else
         @handle.object['default_value'] = dialog_hash.first[0]
    end
    @handle.object["values"] = dialog_hash
    end
    end
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  Cflab::DynamicDialogs::Methods::List_flavors.new.main
end
You are free to not include the Library module into your main class, but then would need to call the methods with their full path,  
Cflab::StdLib::Core::log(:info, 'stuff happened')
The possibilities with Embedded Methods are endless, and I look forward to building up some truly reusable, generic, well tested, and well documented collection of useful utilities.

Share this:
[Twitter] [https://www.redhat.com/en/blog?share=twitter&nb=1]
[Facebook] [https://www.redhat.com/en/blog?share=facebook&nb=1]
