---
layout: page
title: Changelog from Radjabov-2 to Spassky-1
---

## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq](https://github.com/ManageIQ/manageiq/compare/radjabov-2...spassky-1)

### Bug

* ConnectionPool v3.0 introduces breaking changes [[#23669]](https://github.com/ManageIQ/manageiq/pull/23669)
* convert MiqReport from references to eager_load [[#23601]](https://github.com/ManageIQ/manageiq/pull/23601)
* Fix shortcut options [[#23515]](https://github.com/ManageIQ/manageiq/pull/23515)
* Catch Kubeclient::HttpError in start_kube_monitor [[#23582]](https://github.com/ManageIQ/manageiq/pull/23582)
* Fix issue where ansible-runner async did not respect the venv [[#23576]](https://github.com/ManageIQ/manageiq/pull/23576)
* Be lenient with schedule expressions [[#23527]](https://github.com/ManageIQ/manageiq/pull/23527)
* Revert ffi upgrade [[#23572]](https://github.com/ManageIQ/manageiq/pull/23572)
* Fail locale:update_all if subprocess fails [[#23551]](https://github.com/ManageIQ/manageiq/pull/23551)
* Fix spec on Rails 7.2.2.2 [[#23549]](https://github.com/ManageIQ/manageiq/pull/23549)
* 7.2's proactive checkout/checkin behavior makes this less helpful [[#23525]](https://github.com/ManageIQ/manageiq/pull/23525)
* Upgrade virtual attributes to 7.2.0.1 [[#23521]](https://github.com/ManageIQ/manageiq/pull/23521)
* Fix EvmServer.validate_database calling wrong method [[#23514]](https://github.com/ManageIQ/manageiq/pull/23514)
* Set progname for raw container/journal loggers [[#23501]](https://github.com/ManageIQ/manageiq/pull/23501)
* [spassky] update lockfile [[#23513]](https://github.com/ManageIQ/manageiq/pull/23513)
* Rails 7.1 deprecated pool_size in AS::Cache::Store/removed in 7.2 [[#23507]](https://github.com/ManageIQ/manageiq/pull/23507)
* Fix workers stuck in "creating" when running evmserver in Process mode [[#23506]](https://github.com/ManageIQ/manageiq/pull/23506)
* Fixes a breakage with rails 7.2 running rake evm:start (server process) [[#23503]](https://github.com/ManageIQ/manageiq/pull/23503)
* Don't include deleted groups in widget generation [[#23491]](https://github.com/ManageIQ/manageiq/pull/23491)
* Fallback to existing project if new project name is empty or whitespace [[#23487]](https://github.com/ManageIQ/manageiq/pull/23487)
* Use safe_load with known good classes and aliases [[#23475]](https://github.com/ManageIQ/manageiq/pull/23475)
* Clean up some virtual_attribute definitions [[#23462]](https://github.com/ManageIQ/manageiq/pull/23462)
* Another translation fix on top of #23484 and #23471 [[#23494]](https://github.com/ManageIQ/manageiq/pull/23494)
* Fix june2025 translations [[#23484]](https://github.com/ManageIQ/manageiq/pull/23484)
* Ensure authenticator respects local_login_disabled [[#23479]](https://github.com/ManageIQ/manageiq/pull/23479)
* Fix typo Memeory->Memory [[#23476]](https://github.com/ManageIQ/manageiq/pull/23476)
* Drop Tenant#use_config_for_attributes [[#23463]](https://github.com/ManageIQ/manageiq/pull/23463)
* Address rack cves [[#23464]](https://github.com/ManageIQ/manageiq/pull/23464)
* Bump manageiq-loggers to v1.2.1 for journald fix [[#23453]](https://github.com/ManageIQ/manageiq/pull/23453)
* Bump manageiq-smartstate for OpenStack fix [[#23452]](https://github.com/ManageIQ/manageiq/pull/23452)
* Fix ServiceTemplate#available_managers [[#23448]](https://github.com/ManageIQ/manageiq/pull/23448)
* Fix Ansible Tower references for base classes [[#23445]](https://github.com/ManageIQ/manageiq/pull/23445)
* Use `hostname -f` for `MiqEnvironment.fully_qualified_domain_name` [[#23442]](https://github.com/ManageIQ/manageiq/pull/23442)
* Fix test issues from rspec-mocks 3.13.3 [[#23436]](https://github.com/ManageIQ/manageiq/pull/23436)
* Fix to skip runner_execution_spec when Ansible Runner is not installed locally [[#23430]](https://github.com/ManageIQ/manageiq/pull/23430)
* Fix issue where a different git init.defaultbranch can break the tests [[#23429]](https://github.com/ManageIQ/manageiq/pull/23429)
* Add missing directory for postgresql pidfile [[#23417]](https://github.com/ManageIQ/manageiq/pull/23417)
* Remove MiqAlert eval in favor of predefined methods [[#23403]](https://github.com/ManageIQ/manageiq/pull/23403)
* Purge miq requests every 6 months [[#21577]](https://github.com/ManageIQ/manageiq/pull/21577)
* Fix issue where base_model? is incorrect when base_model is overridden [[#23395]](https://github.com/ManageIQ/manageiq/pull/23395)
* Opt into purging by destroy for container entities, use delete elsewhere [[#23389]](https://github.com/ManageIQ/manageiq/pull/23389)
* Update entitlement filters when a tag is renamed [[#23393]](https://github.com/ManageIQ/manageiq/pull/23393)
* Add purge_by_date_and_orphaned [[#23385]](https://github.com/ManageIQ/manageiq/pull/23385)
* Prevent orphans by purging associated records before the parent table [[#23384]](https://github.com/ManageIQ/manageiq/pull/23384)
* Remove url delegate from base AutomationManager [[#23388]](https://github.com/ManageIQ/manageiq/pull/23388)
* Don't blow up on missing assets in production [[#23371]](https://github.com/ManageIQ/manageiq/pull/23371)
* Marshal/dump session objects [[#23369]](https://github.com/ManageIQ/manageiq/pull/23369)
* Bump rugged to 1.9.0 [[#23353]](https://github.com/ManageIQ/manageiq/pull/23353)
* Numerics shouldn't be tested for ".bytes" like suffix [[#23349]](https://github.com/ManageIQ/manageiq/pull/23349)
* Set secret_key_base early enough for rails processes [[#23351]](https://github.com/ManageIQ/manageiq/pull/23351)
* Fix issue where brakeman does not detect lockfile correctly from engines [[#23325]](https://github.com/ManageIQ/manageiq/pull/23325)
* Call sync_from_system before_sync_workers at startup [[#23309]](https://github.com/ManageIQ/manageiq/pull/23309)
* Use foreign_key on the base model's name if ems_events association doesn't exist [[#23296]](https://github.com/ManageIQ/manageiq/pull/23296)
* Fix git_worktree checkout with a Pathname [[#23308]](https://github.com/ManageIQ/manageiq/pull/23308)
* Fix metric/ci_mixin_spec using kubevirt vm [[#23293]](https://github.com/ManageIQ/manageiq/pull/23293)
* Normalize ol_x64 as oracle OS [[#23290]](https://github.com/ManageIQ/manageiq/pull/23290)
* Avoid scope query when preloading [[#23277]](https://github.com/ManageIQ/manageiq/pull/23277)
* Resurrect dashboard widgets not actually using rss feeds [[#23264]](https://github.com/ManageIQ/manageiq/pull/23264)
* Reset cached secrets on Rails 7.0 [[#23259]](https://github.com/ManageIQ/manageiq/pull/23259)

### Enhancement

* Add miq_provision_configuration_script_dialog factory [[#23657]](https://github.com/ManageIQ/manageiq/pull/23657)
* Updates for ConfigurationScript Service UI [[#23637]](https://github.com/ManageIQ/manageiq/pull/23637)
* Support /mnt/log_collection mount point for log collection [[#23644]](https://github.com/ManageIQ/manageiq/pull/23644)
* Add SameSite=Strict for cookies [[#23631]](https://github.com/ManageIQ/manageiq/pull/23631)
* Add MiqRequest and MiqProvisionWorkflow classes for ConfigurationScript provisioning [[#23542]](https://github.com/ManageIQ/manageiq/pull/23542)
* Upgrade QueryRelation to leverage eager_include/preload [[#23620]](https://github.com/ManageIQ/manageiq/pull/23620)
* Add Nutanix provider [[#23586]](https://github.com/ManageIQ/manageiq/pull/23586)
* Extract connectable! method [[#23587]](https://github.com/ManageIQ/manageiq/pull/23587)
* Improve i18n newlines test output [[#23218]](https://github.com/ManageIQ/manageiq/pull/23218)
* Allow for per-rails-environment permissions files [[#23504]](https://github.com/ManageIQ/manageiq/pull/23504)
* Features for Container project functionalities [[#23498]](https://github.com/ManageIQ/manageiq/pull/23498)
* Create, update, delete container projects [[#23495]](https://github.com/ManageIQ/manageiq/pull/23495)
* Update provider generator to use VcrSecrets [[#23497]](https://github.com/ManageIQ/manageiq/pull/23497)
* upgrade virtual attributes [[#23490]](https://github.com/ManageIQ/manageiq/pull/23490)
* add class_name for virt has_many_through [[#23489]](https://github.com/ManageIQ/manageiq/pull/23489)
* Add appliance/container tests for ansible-runner [[#23482]](https://github.com/ManageIQ/manageiq/pull/23482)
* Add Nutanix VM Vendor [[#23481]](https://github.com/ManageIQ/manageiq/pull/23481)
* Notify Slack on locale_update_all failure [[#23451]](https://github.com/ManageIQ/manageiq/pull/23451)
* Indent the yarn audit pending list [[#23449]](https://github.com/ManageIQ/manageiq/pull/23449)
* Add Terraform Enterprise classes to locale [[#23446]](https://github.com/ManageIQ/manageiq/pull/23446)
* Add `ServiceTemplate{Awx,AnsibleTower}.available_managers` to retrieve available automation managers generically [[#23447]](https://github.com/ManageIQ/manageiq/pull/23447)
* Add Terraform Enterprise Provider [[#23440]](https://github.com/ManageIQ/manageiq/pull/23440)
* Bump to 10.0.2 for https://github.com/ManageIQ/manageiq-appliance_console/pull/278 [[#23439]](https://github.com/ManageIQ/manageiq/pull/23439)
* Allow running simulate_queue_worker from a Rake task [[#23434]](https://github.com/ManageIQ/manageiq/pull/23434)
* Implement all public `Logger::LogDevice` methods [[#23428]](https://github.com/ManageIQ/manageiq/pull/23428)
* Add a RequestLogger that creates RequestLog records [[#23426]](https://github.com/ManageIQ/manageiq/pull/23426)
* set automation attrs to get service object in ae root for service reconfiguration [[#23405]](https://github.com/ManageIQ/manageiq/pull/23405)
* Add renovate defaults to plugin generator [[#23413]](https://github.com/ManageIQ/manageiq/pull/23413)
* Add purge orphan tool [[#23399]](https://github.com/ManageIQ/manageiq/pull/23399)
* fix_auth: gracefully handle bad password encryption [[#23401]](https://github.com/ManageIQ/manageiq/pull/23401)
* Allow OOtB ansible content to also come from galaxy [[#23391]](https://github.com/ManageIQ/manageiq/pull/23391)
* Rails 7.1 [[#23225]](https://github.com/ManageIQ/manageiq/pull/23225)
* Explicitly state bundler_d files [[#23334]](https://github.com/ManageIQ/manageiq/pull/23334)
* deprecate attribute no longer uses virtual attribute [[#23321]](https://github.com/ManageIQ/manageiq/pull/23321)
* introduce all_attribute_names [[#23324]](https://github.com/ManageIQ/manageiq/pull/23324)
* Include the GHSA number when sorting npm excludes [[#23323]](https://github.com/ManageIQ/manageiq/pull/23323)
* Sort npm audit pending list by severity [[#23319]](https://github.com/ManageIQ/manageiq/pull/23319)
* CP4AIOPS-3113 Introduce configurable delimiter for LDAP group names [[#23139]](https://github.com/ManageIQ/manageiq/pull/23139)

### Other

* [SPASSKY] Update httparty for CVE-2025-68696 [[#23693]](https://github.com/ManageIQ/manageiq/pull/23693)
* 11-13 translations [[#23656]](https://github.com/ManageIQ/manageiq/pull/23656)
* Update English Translations [[#23583]](https://github.com/ManageIQ/manageiq/pull/23583)
* Move FileDepotMixin to be exclusively for PxeServer [[#23652]](https://github.com/ManageIQ/manageiq/pull/23652)
* Update dependency db-query-matchers to "~>0.15.0" [[#23650]](https://github.com/ManageIQ/manageiq/pull/23650)
* Drop Log Collection Backend 2 [[#23649]](https://github.com/ManageIQ/manageiq/pull/23649)
* Drop Log Collection Backend [[#23647]](https://github.com/ManageIQ/manageiq/pull/23647)
* Update dependency cypress-on-rails to "~>1.20.0" [[#23639]](https://github.com/ManageIQ/manageiq/pull/23639)
* Update rails to 7.2.3 [[#23641]](https://github.com/ManageIQ/manageiq/pull/23641)
* Update dependency capybara to "~>2.18.0" [[#23562]](https://github.com/ManageIQ/manageiq/pull/23562)
* Fix some minor typos when I noticed 'taget' [[#23634]](https://github.com/ManageIQ/manageiq/pull/23634)
* Cleanup get_description override for Configuration Scripts Provisioning [[#23633]](https://github.com/ManageIQ/manageiq/pull/23633)
* Clean up ActsAsArScope and ActsAsArModel for recent rbac changes [[#23617]](https://github.com/ManageIQ/manageiq/pull/23617)
* Upgrade uri to 0.13.3 for CVE-2025-61594 [[#23628]](https://github.com/ManageIQ/manageiq/pull/23628)
* update rack for CVE-2025-59830 [[#23626]](https://github.com/ManageIQ/manageiq/pull/23626)
* Add cypress-on-rails support  [[#23600]](https://github.com/ManageIQ/manageiq/pull/23600)
* Support factory bot rails [[#23613]](https://github.com/ManageIQ/manageiq/pull/23613)
* Update rack for CVE-2025-61772 [[#23612]](https://github.com/ManageIQ/manageiq/pull/23612)
* Remove references.includes from non Rbac usage [[#23607]](https://github.com/ManageIQ/manageiq/pull/23607)
* Update Vm#find_all_by_mac_address_and_hostname_and_ipaddress [[#23609]](https://github.com/ManageIQ/manageiq/pull/23609)
* Update actions/checkout action to v5 [[#23598]](https://github.com/ManageIQ/manageiq/pull/23598)
* Update dependency db-query-matchers to "~>0.14.0" [[#23564]](https://github.com/ManageIQ/manageiq/pull/23564)
* Rack 2.2.8 upgrade for CVE-2025-59830 [[#23605]](https://github.com/ManageIQ/manageiq/pull/23605)
* Move _queue methods into NetworkManager base class [[#23590]](https://github.com/ManageIQ/manageiq/pull/23590)
* Revert "Update dependency gettext_i18n_rails_js to "~>1.4.0"" [[#23584]](https://github.com/ManageIQ/manageiq/pull/23584)
* Update dependency gettext_i18n_rails_js to "~>1.4.0" [[#23566]](https://github.com/ManageIQ/manageiq/pull/23566)
* Add script to help setup and execute ansible_runner execution tests [[#23574]](https://github.com/ManageIQ/manageiq/pull/23574)
* Updates to the i18n catalogs [[#23575]](https://github.com/ManageIQ/manageiq/pull/23575)
* Update dependency ffi to "< 1.17.3" [[#23558]](https://github.com/ManageIQ/manageiq/pull/23558)
* Update paambaati/codeclimate-action action to v9 [[#23561]](https://github.com/ManageIQ/manageiq/pull/23561)
* Configure Renovate [[#22542]](https://github.com/ManageIQ/manageiq/pull/22542)
* August 2025 translations [[#23557]](https://github.com/ManageIQ/manageiq/pull/23557)
* Cleanup files for cleaner merge backs [[#23554]](https://github.com/ManageIQ/manageiq/pull/23554)
* Ignore changes in locale:update_all when only dates have changed [[#23552]](https://github.com/ManageIQ/manageiq/pull/23552)
* [SPASSKY] Update lockfile after merge of master into spassky [[#23546]](https://github.com/ManageIQ/manageiq/pull/23546)
* Update English Translations [[#23483]](https://github.com/ManageIQ/manageiq/pull/23483)
* Let's use lets [[#23493]](https://github.com/ManageIQ/manageiq/pull/23493)
* upgrade EtOrbi version [[#23544]](https://github.com/ManageIQ/manageiq/pull/23544)
* Drop AUTHORS file [[#23543]](https://github.com/ManageIQ/manageiq/pull/23543)
* Move EtOrbi monkey patch from initializer to lib/extensions [[#23541]](https://github.com/ManageIQ/manageiq/pull/23541)
* drop unneeded et-orbi versioning [[#23540]](https://github.com/ManageIQ/manageiq/pull/23540)
* Upgrade to jquery-rjs with the 7.2 deprecation fix [[#23523]](https://github.com/ManageIQ/manageiq/pull/23523)
* Organize rack attack enabler to add cypress exclusion [[#23534]](https://github.com/ManageIQ/manageiq/pull/23534)
* CVE-2024-43380 rufus-scheduler version [[#23535]](https://github.com/ManageIQ/manageiq/pull/23535)
* Add a rack session dalli debug logger [[#23530]](https://github.com/ManageIQ/manageiq/pull/23530)
* Rails 7.1+ migration context simplifies our code [[#23533]](https://github.com/ManageIQ/manageiq/pull/23533)
* show_exceptions no longer supports true\|false [[#23531]](https://github.com/ManageIQ/manageiq/pull/23531)
* clean_up was last called in 2014 :wink: [[#23532]](https://github.com/ManageIQ/manageiq/pull/23532)
* upgrade thor CVE-2025-54314 [[#23522]](https://github.com/ManageIQ/manageiq/pull/23522)
* Bump manageiq-messaging to v2.0 [[#23516]](https://github.com/ManageIQ/manageiq/pull/23516)
* Rails 7.2 cleanup to_s config paths [[#23509]](https://github.com/ManageIQ/manageiq/pull/23509)
* pool#connection is deprecated in 7.2, use with_connection here [[#23511]](https://github.com/ManageIQ/manageiq/pull/23511)
* Fix 7.1 deprecated and 7.2 removed name arg to remove_connection [[#23512]](https://github.com/ManageIQ/manageiq/pull/23512)
* Rails 7.2 cleanup [[#23508]](https://github.com/ManageIQ/manageiq/pull/23508)
* remove unnecessary instance variables in specs [[#23492]](https://github.com/ManageIQ/manageiq/pull/23492)
* Drop deprecated require_nested and include_concern [[#23505]](https://github.com/ManageIQ/manageiq/pull/23505)
* Rails 7.2 [[#23424]](https://github.com/ManageIQ/manageiq/pull/23424)
* [SPASSKY] Update lockfile after backport of #23465 [[#23499]](https://github.com/ManageIQ/manageiq/pull/23499)
* Remove declared system gems that are actual dependencies [[#23465]](https://github.com/ManageIQ/manageiq/pull/23465)
* Add VcrSecrets spec helper [[#23496]](https://github.com/ManageIQ/manageiq/pull/23496)
* Use virtual_has_many :through and delegate :types [[#23486]](https://github.com/ManageIQ/manageiq/pull/23486)
* June 2025 translations [[#23471]](https://github.com/ManageIQ/manageiq/pull/23471)
* Update Yarn to v4.9.2 [[#23473]](https://github.com/ManageIQ/manageiq/pull/23473)
* Update English Translations [[#23355]](https://github.com/ManageIQ/manageiq/pull/23355)
* Refactor run_single_worker find or create record [[#21436]](https://github.com/ManageIQ/manageiq/pull/21436)
* converge MiqExpression#lenient evaluate and evaluate [[#23467]](https://github.com/ManageIQ/manageiq/pull/23467)
* Clean up: remove methods no longer in use [[#23450]](https://github.com/ManageIQ/manageiq/pull/23450)
* Drop build stats since buildstats.info is dead [[#23466]](https://github.com/ManageIQ/manageiq/pull/23466)
* This is an easy way to speed up cypress by disabling code reloading [[#23461]](https://github.com/ManageIQ/manageiq/pull/23461)
* Set bcrypt cost low for faster dev and test environment [[#23455]](https://github.com/ManageIQ/manageiq/pull/23455)
* Revert "Merge pull request #23313 from Fryguy/plugin_gen_default_renovate" [[#23438]](https://github.com/ManageIQ/manageiq/pull/23438)
* Add a default renovate.json to the plugin generator [[#23313]](https://github.com/ManageIQ/manageiq/pull/23313)
* Update Yarn to v4.9.1 [[#23423]](https://github.com/ManageIQ/manageiq/pull/23423)
* test preload passing an array [[#23402]](https://github.com/ManageIQ/manageiq/pull/23402)
* [SPASSKY] Update packages for various CVEs [[#23407]](https://github.com/ManageIQ/manageiq/pull/23407)
* Remove eval of event definition message in favor of directly coding [[#23398]](https://github.com/ManageIQ/manageiq/pull/23398)
* Remove unnecessary use of class_eval [[#23397]](https://github.com/ManageIQ/manageiq/pull/23397)
* Update brakeman ignore for Ruby 3.1.7 [[#23400]](https://github.com/ManageIQ/manageiq/pull/23400)
* Quiet connections from the log [[#23396]](https://github.com/ManageIQ/manageiq/pull/23396)
* Humanizing the table name makes debugging harder [[#23387]](https://github.com/ManageIQ/manageiq/pull/23387)
* Use random session secret token in case of decryption error [[#23379]](https://github.com/ManageIQ/manageiq/pull/23379)
* Update fix_auth verbiage [[#23382]](https://github.com/ManageIQ/manageiq/pull/23382)
* Refactor spec to be run by all providers [[#23390]](https://github.com/ManageIQ/manageiq/pull/23390)
* Add a spec verifying all providers have a matching vendor asset [[#23372]](https://github.com/ManageIQ/manageiq/pull/23372)
* Drop MonitoringManager [[#23376]](https://github.com/ManageIQ/manageiq/pull/23376)
* resolve rack CVE-2025-276010 [[#23374]](https://github.com/ManageIQ/manageiq/pull/23374)
* Spell marshal properly [[#23370]](https://github.com/ManageIQ/manageiq/pull/23370)
* Upgrade rack gem CVE-2025-27111 [[#23367]](https://github.com/ManageIQ/manageiq/pull/23367)
* Updated translations from  February 28th [[#23362]](https://github.com/ManageIQ/manageiq/pull/23362)
* Update gems for CVEs [[#23361]](https://github.com/ManageIQ/manageiq/pull/23361)
* Update Yarn to v4.7.0 [[#23363]](https://github.com/ManageIQ/manageiq/pull/23363)
* Add interactive-ignore support through test:security:brakeman [[#23357]](https://github.com/ManageIQ/manageiq/pull/23357)
* Fix brakeman warnings [[#23356]](https://github.com/ManageIQ/manageiq/pull/23356)
* Update English Translations [[#23336]](https://github.com/ManageIQ/manageiq/pull/23336)
* [SPASSKY] Lockdown Ruby version to Ruby 3.3 [[#23352]](https://github.com/ManageIQ/manageiq/pull/23352)
* Use settings for filtered events [[#23320]](https://github.com/ManageIQ/manageiq/pull/23320)
* Revive a comment accidentally dropped in #23337 [[#23338]](https://github.com/ManageIQ/manageiq/pull/23338)
* Rails 7.1 friendly attribute changes [[#23337]](https://github.com/ManageIQ/manageiq/pull/23337)
* Update English Translations [[#23288]](https://github.com/ManageIQ/manageiq/pull/23288)
* Avoid calling MiqQueue.messaging_client and stub it as missing [[#23331]](https://github.com/ManageIQ/manageiq/pull/23331)
* Specify the FQ class name for the provisioning manager [[#23330]](https://github.com/ManageIQ/manageiq/pull/23330)
* Drop cgi from the Gemfile as the default in ruby 3.1.3 and 3.3 has the CVE fix [[#23327]](https://github.com/ManageIQ/manageiq/pull/23327)
* Bump manageiq-smartstate for EL8,9 RPM support [[#23326]](https://github.com/ManageIQ/manageiq/pull/23326)
* Add brakeman ignores for Ruby 3.1 and Rails 7.0 [[#23322]](https://github.com/ManageIQ/manageiq/pull/23322)
* Update Yarn to v4.6.0 [[#23317]](https://github.com/ManageIQ/manageiq/pull/23317)
* Bump rails minimum to 7.0.8.7 for CVEs [[#23311]](https://github.com/ManageIQ/manageiq/pull/23311)
* Pin concurrent-ruby to < 1.3.5 [[#23310]](https://github.com/ManageIQ/manageiq/pull/23310)
* Add Ansible::Runner specs for running roles [[#23301]](https://github.com/ManageIQ/manageiq/pull/23301)
* Add forked azure gems with our custom source [[#23304]](https://github.com/ManageIQ/manageiq/pull/23304)
* Remove unnecessary test failing on rails 7.1. [[#23299]](https://github.com/ManageIQ/manageiq/pull/23299)
* Upgrade config to latest 5.x version for rails 7.1 compatibility [[#23275]](https://github.com/ManageIQ/manageiq/pull/23275)
* Update Yarn to v4.5.3 [[#23283]](https://github.com/ManageIQ/manageiq/pull/23283)
* Update Yarn to v4.5.2 [[#23280]](https://github.com/ManageIQ/manageiq/pull/23280)
* Update translations based on the last two English changes [[#23269]](https://github.com/ManageIQ/manageiq/pull/23269)
* Use the rails 7.1+ serialize interface [[#23253]](https://github.com/ManageIQ/manageiq/pull/23253)
* Update English Translations [[#23233]](https://github.com/ManageIQ/manageiq/pull/23233)
* Add gitignores for rails credentials [[#23263]](https://github.com/ManageIQ/manageiq/pull/23263)
* Upgrading ruby to 3.3 [[#23142]](https://github.com/ManageIQ/manageiq/pull/23142)
* Lock URI to 0.13.x [[#23260]](https://github.com/ManageIQ/manageiq/pull/23260)


## <i class="fa-brands fa-github"></i> [ManageIQ/amazon_ssa_support](https://github.com/ManageIQ/amazon_ssa_support/compare/radjabov-2...spassky-1)

### Other

* Cleanup files for cleaner merge backs [[#139]](https://github.com/ManageIQ/amazon_ssa_support/pull/139)
* Update actions/checkout action to v5 [[#138]](https://github.com/ManageIQ/amazon_ssa_support/pull/138)
* Update manageiq-style to latest [[#135]](https://github.com/ManageIQ/amazon_ssa_support/pull/135)
* [SPASSKY] Lockdown Ruby version to Ruby 3.3 [[#132]](https://github.com/ManageIQ/amazon_ssa_support/pull/132)
* Inherit renovate config from a central location [[#130]](https://github.com/ManageIQ/amazon_ssa_support/pull/130)
* Test with Ruby 3.1 and 3.3 [[#128]](https://github.com/ManageIQ/amazon_ssa_support/pull/128)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-api](https://github.com/ManageIQ/manageiq-api/compare/radjabov-2...spassky-1)

### Bug

* Enforce valid offset and limit [[#1303]](https://github.com/ManageIQ/manageiq-api/pull/1303)
* fix logger issues on ruby 3.4 [[#1302]](https://github.com/ManageIQ/manageiq-api/pull/1302)
* Remove unpermitted parameters warning [[#1301]](https://github.com/ManageIQ/manageiq-api/pull/1301)
* Ensure EMS subcollections use ems_operations role [[#1299]](https://github.com/ManageIQ/manageiq-api/pull/1299)
* Snapshot Operations should queue_object_action with role=ems_operations [[#1298]](https://github.com/ManageIQ/manageiq-api/pull/1298)
* Fix API counts to honor RBAC [[#1293]](https://github.com/ManageIQ/manageiq-api/pull/1293)
* no longer refrence use_config_for_attributes [[#1285]](https://github.com/ManageIQ/manageiq-api/pull/1285)

### Enhancement

* Methods and API endpoint yaml for Container Project CRUD [[#1291]](https://github.com/ManageIQ/manageiq-api/pull/1291)
* Test each subhash for included attributes, not subhash equality [[#1280]](https://github.com/ManageIQ/manageiq-api/pull/1280)
* Expose attribute aliases in list of attributes [[#1278]](https://github.com/ManageIQ/manageiq-api/pull/1278)
* Treat result of to_h to be hashes recursively (support config gem 3+) [[#1275]](https://github.com/ManageIQ/manageiq-api/pull/1275)

### Other

* Cleanup files for cleaner merge backs [[#1295]](https://github.com/ManageIQ/manageiq-api/pull/1295)
* Update actions/checkout action to v5 [[#1294]](https://github.com/ManageIQ/manageiq-api/pull/1294)
* Drop to_s on engine paths [[#1289]](https://github.com/ManageIQ/manageiq-api/pull/1289)
* Drop build stats since buildstats.info is dead [[#1286]](https://github.com/ManageIQ/manageiq-api/pull/1286)
* Remove n+1 for /api/notifications [[#1284]](https://github.com/ManageIQ/manageiq-api/pull/1284)
* [SPASSKY] Lockdown Ruby version to Ruby 3.3 [[#1281]](https://github.com/ManageIQ/manageiq-api/pull/1281)
* rails 7.1: response.parsed_body is now a HashWithIndifferentAccess [[#1279]](https://github.com/ManageIQ/manageiq-api/pull/1279)
* Inherit renovate config from a central location [[#1277]](https://github.com/ManageIQ/manageiq-api/pull/1277)
* Testing with ruby 3.2, 3.3 [[#1270]](https://github.com/ManageIQ/manageiq-api/pull/1270)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-appliance](https://github.com/ManageIQ/manageiq-appliance/compare/radjabov-2...spassky-1)

### Bug

* Set OIDCCacheShmMax value to avoid using changed package defaults [[#400]](https://github.com/ManageIQ/manageiq-appliance/pull/400)
* Add bundler aware shell alias for the cli [[#394]](https://github.com/ManageIQ/manageiq-appliance/pull/394)
* Workaround issue where activated base64 isn't what's in bundle [[#393]](https://github.com/ManageIQ/manageiq-appliance/pull/393)
* CP4AIOPS-3113 Pass authentication group delimiter to rails [[#389]](https://github.com/ManageIQ/manageiq-appliance/pull/389)

### Enhancement

* Check for pending migrations before starting MIQ [[#395]](https://github.com/ManageIQ/manageiq-appliance/pull/395)

### Other

* Inherit renovate config from a central location [[#392]](https://github.com/ManageIQ/manageiq-appliance/pull/392)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-appliance-build](https://github.com/ManageIQ/manageiq-appliance-build/compare/radjabov-2...spassky-1)

### Bug

* Fix issue with login with newer kubevirt [[#590]](https://github.com/ManageIQ/manageiq-appliance-build/pull/590)
* Fix typos in deploy script [[#585]](https://github.com/ManageIQ/manageiq-appliance-build/pull/585)

### Enhancement

* Updates to deploy_kubevirt_vm [[#587]](https://github.com/ManageIQ/manageiq-appliance-build/pull/587)
* Add Albert's uninstall appliance script [[#586]](https://github.com/ManageIQ/manageiq-appliance-build/pull/586)
* Add script to deploy a VM to KubeVirt/OSV [[#584]](https://github.com/ManageIQ/manageiq-appliance-build/pull/584)
* Set ruby stream to 3.3 [[#578]](https://github.com/ManageIQ/manageiq-appliance-build/pull/578)

### Other

* Cleanup files for cleaner merge backs [[#589]](https://github.com/ManageIQ/manageiq-appliance-build/pull/589)
* Update actions/checkout action to v5 [[#588]](https://github.com/ManageIQ/manageiq-appliance-build/pull/588)
* [SPASSKY] Lockdown Ruby version to Ruby 3.3 [[#583]](https://github.com/ManageIQ/manageiq-appliance-build/pull/583)
* Inherit renovate config from a central location [[#581]](https://github.com/ManageIQ/manageiq-appliance-build/pull/581)
* test with ruby 3.3 [[#577]](https://github.com/ManageIQ/manageiq-appliance-build/pull/577)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-automation_engine](https://github.com/ManageIQ/manageiq-automation_engine/compare/radjabov-2...spassky-1)

### Bug

* Fix YAML.load error with serialized StateVarHash [[#572]](https://github.com/ManageIQ/manageiq-automation_engine/pull/572)
* Require 'logger' in ae_engine dynamic_preamble [[#566]](https://github.com/ManageIQ/manageiq-automation_engine/pull/566)

### Enhancement

* Add provisioning via automation manager such as terraform enterprise [[#579]](https://github.com/ManageIQ/manageiq-automation_engine/pull/579)
* Expose ServiceTerraformEnterprise service model [[#573]](https://github.com/ManageIQ/manageiq-automation_engine/pull/573)
* Expose attribute_aliases as attributes [[#565]](https://github.com/ManageIQ/manageiq-automation_engine/pull/565)

### Other

* Use less specific error syntax to support uri 0.13.x and 1.x [[#580]](https://github.com/ManageIQ/manageiq-automation_engine/pull/580)
* Cleanup files for cleaner merge backs [[#578]](https://github.com/ManageIQ/manageiq-automation_engine/pull/578)
* Update actions/checkout action to v5 [[#577]](https://github.com/ManageIQ/manageiq-automation_engine/pull/577)
* Drop to_s on engine paths [[#576]](https://github.com/ManageIQ/manageiq-automation_engine/pull/576)
* Drop build stats since buildstats.info is dead [[#574]](https://github.com/ManageIQ/manageiq-automation_engine/pull/574)
* Remove prepend_namespace [[#551]](https://github.com/ManageIQ/manageiq-automation_engine/pull/551)
* [SPASSKY] Lockdown Ruby version to Ruby 3.3 [[#568]](https://github.com/ManageIQ/manageiq-automation_engine/pull/568)
* Wrap all automate logger calls to process the request_id [[#567]](https://github.com/ManageIQ/manageiq-automation_engine/pull/567)
* Inherit renovate config from a central location [[#564]](https://github.com/ManageIQ/manageiq-automation_engine/pull/564)
* Testing with ruby 3.2, 3.3 [[#559]](https://github.com/ManageIQ/manageiq-automation_engine/pull/559)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-consumption](https://github.com/ManageIQ/manageiq-consumption/compare/radjabov-2...spassky-1)

### Enhancement

* Use the rails 7.1+ serialize interface [[#224]](https://github.com/ManageIQ/manageiq-consumption/pull/224)

### Other

* Cleanup files for cleaner merge backs [[#231]](https://github.com/ManageIQ/manageiq-consumption/pull/231)
* Update actions/checkout action to v5 [[#230]](https://github.com/ManageIQ/manageiq-consumption/pull/230)
* Drop build stats since buildstats.info is dead [[#228]](https://github.com/ManageIQ/manageiq-consumption/pull/228)
* [SPASSKY] Lockdown Ruby version to Ruby 3.3 [[#227]](https://github.com/ManageIQ/manageiq-consumption/pull/227)
* Inherit renovate config from a central location [[#226]](https://github.com/ManageIQ/manageiq-consumption/pull/226)
* Testing with ruby 3.2, 3.3 [[#223]](https://github.com/ManageIQ/manageiq-consumption/pull/223)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-content](https://github.com/ManageIQ/manageiq-content/compare/radjabov-2...spassky-1)

### Bug

* Fix a missing stack.refresh_ems stub [[#776]](https://github.com/ManageIQ/manageiq-content/pull/776)
* Fix refresh_ems missing_credentials without using VCR authentication secret from another engine [[#769]](https://github.com/ManageIQ/manageiq-content/pull/769)
* Cleanup YAML files [[#758]](https://github.com/ManageIQ/manageiq-content/pull/758)

### Enhancement

* Add provisioning via automation manager such as terraform enterprise [[#772]](https://github.com/ManageIQ/manageiq-content/pull/772)
* Add Policy/StateMachines for ServiceReconfigureRequestApproval (auto) [[#768]](https://github.com/ManageIQ/manageiq-content/pull/768)
* remove prepend_namespace [[#765]](https://github.com/ManageIQ/manageiq-content/pull/765)
* Add TerraformEnterprise StateMachine [[#764]](https://github.com/ManageIQ/manageiq-content/pull/764)
* Add Generic Service Reconfigure entry point [[#763]](https://github.com/ManageIQ/manageiq-content/pull/763)
* Add Kubevirt/OSV VM events [[#755]](https://github.com/ManageIQ/manageiq-content/pull/755)

### Other

* Cleanup files for cleaner merge backs [[#771]](https://github.com/ManageIQ/manageiq-content/pull/771)
* Update actions/checkout action to v5 [[#770]](https://github.com/ManageIQ/manageiq-content/pull/770)
* Drop build stats since buildstats.info is dead [[#766]](https://github.com/ManageIQ/manageiq-content/pull/766)
* Use specific role versions [[#762]](https://github.com/ManageIQ/manageiq-content/pull/762)
* Use the galaxy roles for manageiq_vmdb and manageiq_automate [[#761]](https://github.com/ManageIQ/manageiq-content/pull/761)
* [SPASSKY] Lockdown Ruby version to Ruby 3.3 [[#760]](https://github.com/ManageIQ/manageiq-content/pull/760)
* Fix rails 7 deprecation/7.1 removal by using Integer#to_fs(:human_size) [[#759]](https://github.com/ManageIQ/manageiq-content/pull/759)
* Inherit renovate config from a central location [[#757]](https://github.com/ManageIQ/manageiq-content/pull/757)
* Testing with ruby 3.2, 3.3 [[#754]](https://github.com/ManageIQ/manageiq-content/pull/754)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-decorators](https://github.com/ManageIQ/manageiq-decorators/compare/radjabov-2...spassky-1)

### Bug

* Add missing vendors assets for some providers [[#114]](https://github.com/ManageIQ/manageiq-decorators/pull/114)
* Add embedded_terraform vendor icon [[#113]](https://github.com/ManageIQ/manageiq-decorators/pull/113)

### Other

* Cleanup files for cleaner merge backs [[#118]](https://github.com/ManageIQ/manageiq-decorators/pull/118)
* Update actions/checkout action to v5 [[#117]](https://github.com/ManageIQ/manageiq-decorators/pull/117)
* Drop build stats since buildstats.info is dead [[#115]](https://github.com/ManageIQ/manageiq-decorators/pull/115)
* [SPASSKY] Lockdown Ruby version to Ruby 3.3 [[#112]](https://github.com/ManageIQ/manageiq-decorators/pull/112)
* Inherit renovate config from a central location [[#111]](https://github.com/ManageIQ/manageiq-decorators/pull/111)
* Testing with ruby 3.3 [[#109]](https://github.com/ManageIQ/manageiq-decorators/pull/109)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-documentation](https://github.com/ManageIQ/manageiq-documentation/compare/radjabov-2...spassky-1)

### Bug

* Fix link to download WebMKS SDK from broadcom.com [[#1857]](https://github.com/ManageIQ/manageiq-documentation/pull/1857)
* Mark Events as supported on IBM Cloud PowerVS [[#1852]](https://github.com/ManageIQ/manageiq-documentation/pull/1852)
* Fix menu link for Automation Management Providers [[#1856]](https://github.com/ManageIQ/manageiq-documentation/pull/1856)
* Delete accidentally added automation_providers directory [[#1850]](https://github.com/ManageIQ/manageiq-documentation/pull/1850)
* Fix broken links on API services page [[#1845]](https://github.com/ManageIQ/manageiq-documentation/pull/1845)
* Fix Red Hat reference in Remote Consoles doc [[#1842]](https://github.com/ManageIQ/manageiq-documentation/pull/1842)
* Fix link to Configuring WebMKS Support [[#1843]](https://github.com/ManageIQ/manageiq-documentation/pull/1843)
* Fix broken link to azure docs for adding an App [[#1841]](https://github.com/ManageIQ/manageiq-documentation/pull/1841)
* Fix image URLs + minor edits for text to appear correctly on line [[#1837]](https://github.com/ManageIQ/manageiq-documentation/pull/1837)
* Fix issue with invalid yaml [[#1826]](https://github.com/ManageIQ/manageiq-documentation/pull/1826)
* QA Minor changes for ASL [[#1819]](https://github.com/ManageIQ/manageiq-documentation/pull/1819)

### Enhancement

* Update Terraform Enterprise Service Catalog docs [[#1871]](https://github.com/ManageIQ/manageiq-documentation/pull/1871)
* Update podman containers/storage root directory [[#1863]](https://github.com/ManageIQ/manageiq-documentation/pull/1863)
* Add documentation on increasing cloned vm disk size [[#1865]](https://github.com/ManageIQ/manageiq-documentation/pull/1865)
* Add a guide for migrating from pods to appliances [[#1851]](https://github.com/ManageIQ/manageiq-documentation/pull/1851)
* Remove settings.server.company [[#1848]](https://github.com/ManageIQ/manageiq-documentation/pull/1848)
* Add instructions on installing WebMKS on containers [[#1846]](https://github.com/ManageIQ/manageiq-documentation/pull/1846)
* IBM Cloud VPC Metrics Capabilities Update [[#1833]](https://github.com/ManageIQ/manageiq-documentation/pull/1833)
* QA Added link for CIC within Cloud Providers section [[#1835]](https://github.com/ManageIQ/manageiq-documentation/pull/1835)
* QA Updated Terraform template variables section [[#1834]](https://github.com/ManageIQ/manageiq-documentation/pull/1834)
* QA Added new topic for IBM CIC provider [[#1829]](https://github.com/ManageIQ/manageiq-documentation/pull/1829)
* Add documentation on enabling Microsoft.Insights for Azure Events / Metrics [[#1811]](https://github.com/ManageIQ/manageiq-documentation/pull/1811)
* Kubevirt/OSV Capabilities Update [[#1825]](https://github.com/ManageIQ/manageiq-documentation/pull/1825)
* Added section to retire the Terraform services [[#1822]](https://github.com/ManageIQ/manageiq-documentation/pull/1822)
* QA Minor change to OpenTofu command description. [[#1821]](https://github.com/ManageIQ/manageiq-documentation/pull/1821)
* Update Capabilities Matrix Service Catalog [[#1824]](https://github.com/ManageIQ/manageiq-documentation/pull/1824)
* QA Add Enabling Metrics Syndication section [[#1820]](https://github.com/ManageIQ/manageiq-documentation/pull/1820)

### Other

* Extract opentofu runner in a separate topic [[#1873]](https://github.com/ManageIQ/manageiq-documentation/pull/1873)
* Document `manageiq://api` builtin method options [[#1869]](https://github.com/ManageIQ/manageiq-documentation/pull/1869)
* Update peter-evans/repository-dispatch action to v4 [[#1867]](https://github.com/ManageIQ/manageiq-documentation/pull/1867)
* Add docs topic and capabilities matrix updates for Nutanix [[#1866]](https://github.com/ManageIQ/manageiq-documentation/pull/1866)
* Update openshift management token instructions [[#1864]](https://github.com/ManageIQ/manageiq-documentation/pull/1864)
* Update workflows docs for changes in floe v0.17.0 and document builtin method parameters [[#1861]](https://github.com/ManageIQ/manageiq-documentation/pull/1861)
* Fix various typos and grammar issues [[#1862]](https://github.com/ManageIQ/manageiq-documentation/pull/1862)
* Update actions/checkout action to v5 [[#1859]](https://github.com/ManageIQ/manageiq-documentation/pull/1859)
* Cleanup files for cleaner merge backs [[#1860]](https://github.com/ManageIQ/manageiq-documentation/pull/1860)
* Remove/generalize references to Red Hat Customer Portal & Support ✂️ 🔥  [[#1858]](https://github.com/ManageIQ/manageiq-documentation/pull/1858)
* Fix markdown bash typo for importing opentofu runner [[#1855]](https://github.com/ManageIQ/manageiq-documentation/pull/1855)
* Add Terraform Enterprise Documentation [[#1847]](https://github.com/ManageIQ/manageiq-documentation/pull/1847)
* Add caveat about KubeVirt VMs from Instance Types [[#1849]](https://github.com/ManageIQ/manageiq-documentation/pull/1849)
* Add ItemBatcher/ItemSelector support to workflows [[#1844]](https://github.com/ManageIQ/manageiq-documentation/pull/1844)
* Mark Reconfigure as supported for KubeVirt/OSV [[#1840]](https://github.com/ManageIQ/manageiq-documentation/pull/1840)
* QA Fixed the file formats table for RHEL [[#1839]](https://github.com/ManageIQ/manageiq-documentation/pull/1839)
* QA Addition of RHEL in Capabilities matrix [[#1838]](https://github.com/ManageIQ/manageiq-documentation/pull/1838)
* Inherit renovate config from a central location [[#1832]](https://github.com/ManageIQ/manageiq-documentation/pull/1832)
* QA Improved content for add azure microsoft insights provider instructions [[#1831]](https://github.com/ManageIQ/manageiq-documentation/pull/1831)
* Upgrade Ruby to 3.3 and jekyll to 4.3 [[#1828]](https://github.com/ManageIQ/manageiq-documentation/pull/1828)
* Add instructions on enabling VMware Request Debugging [[#1823]](https://github.com/ManageIQ/manageiq-documentation/pull/1823)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-gems-pending](https://github.com/ManageIQ/manageiq-gems-pending/compare/radjabov-2...spassky-1)

### Bug

* Update rack 3.1.19 [[#621]](https://github.com/ManageIQ/manageiq-gems-pending/pull/621)
* Cleanup mount ping [[#620]](https://github.com/ManageIQ/manageiq-gems-pending/pull/620)

### Other

* Upgrade rails to 7.2.3 [[#619]](https://github.com/ManageIQ/manageiq-gems-pending/pull/619)
* update rack for CVE-2025-59830 [[#618]](https://github.com/ManageIQ/manageiq-gems-pending/pull/618)
* update rack (dev) for CVE-2025-61772 [[#617]](https://github.com/ManageIQ/manageiq-gems-pending/pull/617)
* Upgrade REXML minimum to 3.4.4 [[#616]](https://github.com/ManageIQ/manageiq-gems-pending/pull/616)
* Lockdown rexml to 3.4.2 at highest for now [[#614]](https://github.com/ManageIQ/manageiq-gems-pending/pull/614)
* Cleanup files for cleaner merge backs [[#613]](https://github.com/ManageIQ/manageiq-gems-pending/pull/613)
* Update actions/checkout action to v5 [[#612]](https://github.com/ManageIQ/manageiq-gems-pending/pull/612)
* nailing down rack version in development [[#610]](https://github.com/ManageIQ/manageiq-gems-pending/pull/610)
* add mfa and other metadata [[#611]](https://github.com/ManageIQ/manageiq-gems-pending/pull/611)
* Drop build stats since buildstats.info is dead [[#606]](https://github.com/ManageIQ/manageiq-gems-pending/pull/606)
* Update manageiq-style to latest [[#605]](https://github.com/ManageIQ/manageiq-gems-pending/pull/605)
* [SPASSKY] Lockdown Ruby version to Ruby 3.3 [[#602]](https://github.com/ManageIQ/manageiq-gems-pending/pull/602)
* Bump manageiq-style for rexml CVEs [[#600]](https://github.com/ManageIQ/manageiq-gems-pending/pull/600)
* Inherit renovate config from a central location [[#599]](https://github.com/ManageIQ/manageiq-gems-pending/pull/599)
* Test with Ruby 3.1 and 3.3 [[#597]](https://github.com/ManageIQ/manageiq-gems-pending/pull/597)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-pods](https://github.com/ManageIQ/manageiq-pods/compare/radjabov-2...spassky-1)

### Bug

* Set OIDCCacheShmMax value to avoid using changed package defaults [[#1320]](https://github.com/ManageIQ/manageiq-pods/pull/1320)
* Fix issue where IPBlock and NamespaceSelector are mutually exclusive [[#1318]](https://github.com/ManageIQ/manageiq-pods/pull/1318)
* Run seeds when upgrading a database [[#1296]](https://github.com/ManageIQ/manageiq-pods/pull/1296)
* Fix `namespaces "system" not found` error [[#1294]](https://github.com/ManageIQ/manageiq-pods/pull/1294)
* Revert label changes from operator-sdk upgrade [[#1292]](https://github.com/ManageIQ/manageiq-pods/pull/1292)
* Add missing evm:automate:reset on upgrade [[#1257]](https://github.com/ManageIQ/manageiq-pods/pull/1257)
* Reorder httpd route processing for efficiency and effectiveness [[#1251]](https://github.com/ManageIQ/manageiq-pods/pull/1251)
* Removing subscription-manager also removes config-manager now [[#1246]](https://github.com/ManageIQ/manageiq-pods/pull/1246)
* Only pick the major and minor go version to ensure the latest is pulled [[#1252]](https://github.com/ManageIQ/manageiq-pods/pull/1252)
* Fix update-ca-trust error - p11-kit: couldn't make directory writable [[#1221]](https://github.com/ManageIQ/manageiq-pods/pull/1221)
* Don't include newer openssl packages from CentOS Stream [[#1233]](https://github.com/ManageIQ/manageiq-pods/pull/1233)
* Fix issue with a shared reference for the deploymentLabels [[#1213]](https://github.com/ManageIQ/manageiq-pods/pull/1213)
* CP4AIOPS-3113 pass delimiter for groups [[#1155]](https://github.com/ManageIQ/manageiq-pods/pull/1155)

### Enhancement

* Add a /healthz endpoint on port 8081 [[#1310]](https://github.com/ManageIQ/manageiq-pods/pull/1310)
* If we're running in Openshift, only allow inbound from the ingress [[#1300]](https://github.com/ManageIQ/manageiq-pods/pull/1300)
* Switch to ruby 3.3 [[#1184]](https://github.com/ManageIQ/manageiq-pods/pull/1184)

### Other

* Bump packages as 9.0-24 packages are no longer on the mirrors [[#1328]](https://github.com/ManageIQ/manageiq-pods/pull/1328)
* Update go dependencies [[#1315]](https://github.com/ManageIQ/manageiq-pods/pull/1315)
* Update go dependencies [[#1314]](https://github.com/ManageIQ/manageiq-pods/pull/1314)
* Update go dependencies [[#1311]](https://github.com/ManageIQ/manageiq-pods/pull/1311)
* Update module github.com/onsi/ginkgo/v2 to v2.27.2 [[#1308]](https://github.com/ManageIQ/manageiq-pods/pull/1308)
* Update go dependencies [[#1309]](https://github.com/ManageIQ/manageiq-pods/pull/1309)
* Update go dependencies [[#1307]](https://github.com/ManageIQ/manageiq-pods/pull/1307)
* Update go dependencies [[#1305]](https://github.com/ManageIQ/manageiq-pods/pull/1305)
* Update go dependencies [[#1302]](https://github.com/ManageIQ/manageiq-pods/pull/1302)
* Update module github.com/onsi/ginkgo/v2 to v2.26.0 [[#1299]](https://github.com/ManageIQ/manageiq-pods/pull/1299)
* Update peter-evans/repository-dispatch action to v4 [[#1298]](https://github.com/ManageIQ/manageiq-pods/pull/1298)
* Update go dependencies [[#1297]](https://github.com/ManageIQ/manageiq-pods/pull/1297)
* Update go dependencies and drop kube-openapi pinning [[#1295]](https://github.com/ManageIQ/manageiq-pods/pull/1295)
* Update go dependencies [[#1284]](https://github.com/ManageIQ/manageiq-pods/pull/1284)
* Update actions/setup-go action to v6 [[#1293]](https://github.com/ManageIQ/manageiq-pods/pull/1293)
* Update module github.com/onsi/gomega to v1.38.1 [[#1286]](https://github.com/ManageIQ/manageiq-pods/pull/1286)
* Update module github.com/onsi/ginkgo/v2 to v2.25.0 [[#1281]](https://github.com/ManageIQ/manageiq-pods/pull/1281)
* Update go dependencies [[#1280]](https://github.com/ManageIQ/manageiq-pods/pull/1280)
* Upgrade to the latest operator-sdk [[#1279]](https://github.com/ManageIQ/manageiq-pods/pull/1279)
* Cleanup files for cleaner merge backs [[#1282]](https://github.com/ManageIQ/manageiq-pods/pull/1282)
* Update go dependencies [[#1274]](https://github.com/ManageIQ/manageiq-pods/pull/1274)
* Update actions/checkout action to v5 [[#1275]](https://github.com/ManageIQ/manageiq-pods/pull/1275)
* Update dependency go to v1.24.6 [[#1273]](https://github.com/ManageIQ/manageiq-pods/pull/1273)
* Update go dependencies [[#1268]](https://github.com/ManageIQ/manageiq-pods/pull/1268)
* Update dependency go to v1.24.5 [[#1266]](https://github.com/ManageIQ/manageiq-pods/pull/1266)
* Switch to CentOS Stream openssl packages [[#1267]](https://github.com/ManageIQ/manageiq-pods/pull/1267)
* Update go dependencies [[#1265]](https://github.com/ManageIQ/manageiq-pods/pull/1265)
* Run with the latest go version [[#1264]](https://github.com/ManageIQ/manageiq-pods/pull/1264)
* Update go dependencies [[#1262]](https://github.com/ManageIQ/manageiq-pods/pull/1262)
* Update go dependencies [[#1260]](https://github.com/ManageIQ/manageiq-pods/pull/1260)
* Update go dependencies [[#1258]](https://github.com/ManageIQ/manageiq-pods/pull/1258)
* Update go dependencies [[#1256]](https://github.com/ManageIQ/manageiq-pods/pull/1256)
* Update go dependencies [[#1254]](https://github.com/ManageIQ/manageiq-pods/pull/1254)
* Drop build stats since buildstats.info is dead [[#1255]](https://github.com/ManageIQ/manageiq-pods/pull/1255)
* Update go dependencies [[#1250]](https://github.com/ManageIQ/manageiq-pods/pull/1250)
* Update go dependencies [[#1248]](https://github.com/ManageIQ/manageiq-pods/pull/1248)
* Update go dependencies [[#1247]](https://github.com/ManageIQ/manageiq-pods/pull/1247)
* Upgrade to go 1.24 and update dependencies [[#1244]](https://github.com/ManageIQ/manageiq-pods/pull/1244)
* Update module github.com/operator-framework/api to v0.31.0 [[#1242]](https://github.com/ManageIQ/manageiq-pods/pull/1242)
* Update go dependencies [[#1240]](https://github.com/ManageIQ/manageiq-pods/pull/1240)
* Update go dependencies [[#1239]](https://github.com/ManageIQ/manageiq-pods/pull/1239)
* Update go dependencies [[#1238]](https://github.com/ManageIQ/manageiq-pods/pull/1238)
* Update go dependencies [[#1236]](https://github.com/ManageIQ/manageiq-pods/pull/1236)
* Update module github.com/onsi/gomega to v1.37.0 [[#1235]](https://github.com/ManageIQ/manageiq-pods/pull/1235)
* Update module github.com/onsi/ginkgo/v2 to v2.23.4 [[#1237]](https://github.com/ManageIQ/manageiq-pods/pull/1237)
* Update go dependencies [[#1234]](https://github.com/ManageIQ/manageiq-pods/pull/1234)
* Update module sigs.k8s.io/controller-runtime to v0.20.4 [[#1232]](https://github.com/ManageIQ/manageiq-pods/pull/1232)
* Update go dependencies [[#1231]](https://github.com/ManageIQ/manageiq-pods/pull/1231)
* Update module github.com/onsi/ginkgo/v2 to v2.23.1 [[#1228]](https://github.com/ManageIQ/manageiq-pods/pull/1228)
* Update go dependencies [[#1224]](https://github.com/ManageIQ/manageiq-pods/pull/1224)
* Update module sigs.k8s.io/controller-runtime to v0.20.3 [[#1223]](https://github.com/ManageIQ/manageiq-pods/pull/1223)
* Update kubernetes packages to v0.32.3 [[#1226]](https://github.com/ManageIQ/manageiq-pods/pull/1226)
* Update module github.com/onsi/ginkgo/v2 to v2.23.0 [[#1222]](https://github.com/ManageIQ/manageiq-pods/pull/1222)
* Update module github.com/operator-framework/api to v0.30.0 [[#1219]](https://github.com/ManageIQ/manageiq-pods/pull/1219)
* Include the license in the manageiq-operator directory [[#1217]](https://github.com/ManageIQ/manageiq-pods/pull/1217)
* Update go dependencies [[#1218]](https://github.com/ManageIQ/manageiq-pods/pull/1218)
* Update go dependencies [[#1214]](https://github.com/ManageIQ/manageiq-pods/pull/1214)
* Update the maps.Copy operands. [[#1215]](https://github.com/ManageIQ/manageiq-pods/pull/1215)
* Update go dependencies [[#1212]](https://github.com/ManageIQ/manageiq-pods/pull/1212)
* Update kubernetes packages to v0.32.2 [[#1210]](https://github.com/ManageIQ/manageiq-pods/pull/1210)
* Update go dependencies [[#1206]](https://github.com/ManageIQ/manageiq-pods/pull/1206)
* Update go dependencies [[#1205]](https://github.com/ManageIQ/manageiq-pods/pull/1205)
* Revert "Switch to ubuntu-24.04" [[#1204]](https://github.com/ManageIQ/manageiq-pods/pull/1204)
* Update go dependencies [[#1202]](https://github.com/ManageIQ/manageiq-pods/pull/1202)
* remove toolchain [[#1201]](https://github.com/ManageIQ/manageiq-pods/pull/1201)
* Update go dependencies [[#1200]](https://github.com/ManageIQ/manageiq-pods/pull/1200)
* Update kubernetes packages to v0.32.1 [[#1196]](https://github.com/ManageIQ/manageiq-pods/pull/1196)
* Inherit renovate config from a central location [[#1198]](https://github.com/ManageIQ/manageiq-pods/pull/1198)
* Update go dependencies [[#1195]](https://github.com/ManageIQ/manageiq-pods/pull/1195)
* Update module sigs.k8s.io/controller-runtime to v0.19.4 [[#1189]](https://github.com/ManageIQ/manageiq-pods/pull/1189)
* Update go dependencies [[#1190]](https://github.com/ManageIQ/manageiq-pods/pull/1190)
* go get -t -u ./... && go mod tidy [[#1185]](https://github.com/ManageIQ/manageiq-pods/pull/1185)
* Update module github.com/onsi/ginkgo/v2 to v2.21.0 [[#1181]](https://github.com/ManageIQ/manageiq-pods/pull/1181)
* Update module github.com/onsi/gomega to v1.35.1 [[#1182]](https://github.com/ManageIQ/manageiq-pods/pull/1182)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-amazon](https://github.com/ManageIQ/manageiq-providers-amazon/compare/radjabov-2...spassky-1)

### Bug

* Support IPv6 only Subnets [[#914]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/914)
* Parse AWS instance ipv6 address [[#913]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/913)
* Fix SSA issues in AWS: keypair param, IAM role check, route table logic [[#900]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/900)
* Fix EventTargetParser using string keys [[#897]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/897)
* Update instance_types action to Ruby 3.3 [[#877]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/877)

### Enhancement

* Update AWS instance_types [[#934]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/934)
* Update AWS instance_types [[#931]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/931)
* Update AWS instance_types [[#930]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/930)
* Update AWS instance_types [[#929]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/929)
* Update AWS instance_types [[#927]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/927)
* Add us-isob-west-1 Region [[#926]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/926)
* Update AWS instance_types [[#925]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/925)
* Update AWS instance_types [[#923]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/923)
* Update AWS instance_types [[#922]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/922)
* Update AWS instance_types [[#921]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/921)
* Update AWS instance_types [[#920]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/920)
* Update AWS instance_types [[#919]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/919)
* Update AWS instance_types [[#917]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/917)
* Update AWS instance_types [[#915]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/915)
* Update AWS instance_types [[#907]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/907)
* Update AWS instance_types [[#912]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/912)
* Update AWS instance_types [[#910]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/910)
* Assign agrare for instance_types bot PRs [[#908]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/908)
* Switch to use VcrSecrets helper from core [[#906]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/906)
* Update AWS instance_types [[#894]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/894)
* Add ContainerProject Subclass [[#904]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/904)
* add class_name for virt has_many_through [[#903]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/903)
* Use virtual_has_many for virtual_relations [[#899]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/899)
* Update AWS instance_types [[#893]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/893)
* Update AWS instance_types [[#892]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/892)
* Update AWS instance_types [[#891]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/891)
* Update AWS instance_types [[#890]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/890)
* Update AWS instance_types [[#889]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/889)
* With rails 7.1, these nil values are not persisted [[#884]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/884)
* Update AWS instance_types [[#885]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/885)
* Update AWS instance_types [[#881]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/881)
* Update AWS instance_types [[#879]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/879)
* Update AWS instance_types [[#878]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/878)

### Other

* Bump aws-sdk-s3 to 1.208.0 minimum for CVE-2025-14762 [[#940]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/940)
* Lockdown aws-sdk-cloudwatch to v1.125.0 [[#937]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/937)
* Cleanup files for cleaner merge backs [[#918]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/918)
* Update actions/checkout action to v5 [[#916]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/916)
* Drop to_s on engine paths [[#909]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/909)
* introduce virtual_has_many :through [[#902]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/902)
* Drop build stats since buildstats.info is dead [[#896]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/896)
* Fix missing required params in AWS auth stubs [[#888]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/888)
* [SPASSKY] Lockdown Ruby version to Ruby 3.3 [[#886]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/886)
* Rename default_blacklisted_event_names [[#883]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/883)
* Drop unused default_blacklisted_events from NetworkManager [[#882]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/882)
* Inherit renovate config from a central location [[#880]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/880)
* Testing with ruby 3.2, 3.3 [[#870]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/870)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-ansible_tower](https://github.com/ManageIQ/manageiq-providers-ansible_tower/compare/radjabov-2...spassky-1)

### Enhancement

* Switch to use VcrSecrets helper from core [[#326]](https://github.com/ManageIQ/manageiq-providers-ansible_tower/pull/326)
* Rename 'Ansible Tower' to 'Ansible Automation Platform' [[#318]](https://github.com/ManageIQ/manageiq-providers-ansible_tower/pull/318)

### Other

* Cleanup files for cleaner merge backs [[#329]](https://github.com/ManageIQ/manageiq-providers-ansible_tower/pull/329)
* Update actions/checkout action to v5 [[#328]](https://github.com/ManageIQ/manageiq-providers-ansible_tower/pull/328)
* Drop to_s on engine paths [[#327]](https://github.com/ManageIQ/manageiq-providers-ansible_tower/pull/327)
* Drop build stats since buildstats.info is dead [[#324]](https://github.com/ManageIQ/manageiq-providers-ansible_tower/pull/324)
* Remove redundant copy/pasted code from awx provider [[#323]](https://github.com/ManageIQ/manageiq-providers-ansible_tower/pull/323)
* [SPASSKY] Lockdown Ruby version to Ruby 3.3 [[#321]](https://github.com/ManageIQ/manageiq-providers-ansible_tower/pull/321)
* Inherit renovate config from a central location [[#320]](https://github.com/ManageIQ/manageiq-providers-ansible_tower/pull/320)
* Remove unnecessary display_name functions [[#319]](https://github.com/ManageIQ/manageiq-providers-ansible_tower/pull/319)
* Testing with ruby 3.2, 3.3 [[#315]](https://github.com/ManageIQ/manageiq-providers-ansible_tower/pull/315)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-autosde](https://github.com/ManageIQ/manageiq-providers-autosde/compare/radjabov-2...spassky-1)

### Enhancement

* Switch to use VcrSecrets helper from core [[#259]](https://github.com/ManageIQ/manageiq-providers-autosde/pull/259)

### Other

* Cleanup files for cleaner merge backs [[#262]](https://github.com/ManageIQ/manageiq-providers-autosde/pull/262)
* Update actions/checkout action to v5 [[#261]](https://github.com/ManageIQ/manageiq-providers-autosde/pull/261)
* Drop to_s on engine paths [[#260]](https://github.com/ManageIQ/manageiq-providers-autosde/pull/260)
* Drop build stats since buildstats.info is dead [[#257]](https://github.com/ManageIQ/manageiq-providers-autosde/pull/257)
* [SPASSKY] Lockdown Ruby version to Ruby 3.3 [[#256]](https://github.com/ManageIQ/manageiq-providers-autosde/pull/256)
* Inherit renovate config from a central location [[#255]](https://github.com/ManageIQ/manageiq-providers-autosde/pull/255)
* Testing with ruby 3.2, 3.3 [[#252]](https://github.com/ManageIQ/manageiq-providers-autosde/pull/252)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-awx](https://github.com/ManageIQ/manageiq-providers-awx/compare/radjabov-2...spassky-1)

### Enhancement

* Switch to use VcrSecrets helper from core [[#44]](https://github.com/ManageIQ/manageiq-providers-awx/pull/44)
* Parameterize resource display_name functions based on provider [[#40]](https://github.com/ManageIQ/manageiq-providers-awx/pull/40)
* resource is an association, not an attribute, add getter/setter aliases [[#37]](https://github.com/ManageIQ/manageiq-providers-awx/pull/37)

### Other

* Cleanup files for cleaner merge backs [[#47]](https://github.com/ManageIQ/manageiq-providers-awx/pull/47)
* Update actions/checkout action to v5 [[#46]](https://github.com/ManageIQ/manageiq-providers-awx/pull/46)
* Drop to_s on engine paths [[#45]](https://github.com/ManageIQ/manageiq-providers-awx/pull/45)
* Drop build stats since buildstats.info is dead [[#43]](https://github.com/ManageIQ/manageiq-providers-awx/pull/43)
* [SPASSKY] Lockdown Ruby version to Ruby 3.3 [[#42]](https://github.com/ManageIQ/manageiq-providers-awx/pull/42)
* Inherit renovate config from a central location [[#41]](https://github.com/ManageIQ/manageiq-providers-awx/pull/41)
* test with ruby 3.3 [[#38]](https://github.com/ManageIQ/manageiq-providers-awx/pull/38)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-azure](https://github.com/ManageIQ/manageiq-providers-azure/compare/radjabov-2...spassky-1)

### Enhancement

* Switch to use VcrSecrets helper from core [[#572]](https://github.com/ManageIQ/manageiq-providers-azure/pull/572)
* Add ContainerProject Subclass [[#571]](https://github.com/ManageIQ/manageiq-providers-azure/pull/571)

### Other

* Cleanup files for cleaner merge backs [[#575]](https://github.com/ManageIQ/manageiq-providers-azure/pull/575)
* Update actions/checkout action to v5 [[#574]](https://github.com/ManageIQ/manageiq-providers-azure/pull/574)
* Drop to_s on engine paths [[#573]](https://github.com/ManageIQ/manageiq-providers-azure/pull/573)
* Drop build stats since buildstats.info is dead [[#569]](https://github.com/ManageIQ/manageiq-providers-azure/pull/569)
* [SPASSKY] Lockdown Ruby version to Ruby 3.3 [[#568]](https://github.com/ManageIQ/manageiq-providers-azure/pull/568)
* Use filtered_event_names from core [[#567]](https://github.com/ManageIQ/manageiq-providers-azure/pull/567)
* Inherit renovate config from a central location [[#566]](https://github.com/ManageIQ/manageiq-providers-azure/pull/566)
* Testing with ruby 3.2, 3.3 [[#562]](https://github.com/ManageIQ/manageiq-providers-azure/pull/562)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-azure_stack](https://github.com/ManageIQ/manageiq-providers-azure_stack/compare/radjabov-2...spassky-1)

### Enhancement

* Switch to use VcrSecrets helper from core [[#119]](https://github.com/ManageIQ/manageiq-providers-azure_stack/pull/119)

### Other

* Cleanup files for cleaner merge backs [[#122]](https://github.com/ManageIQ/manageiq-providers-azure_stack/pull/122)
* Update actions/checkout action to v5 [[#121]](https://github.com/ManageIQ/manageiq-providers-azure_stack/pull/121)
* Drop to_s on engine paths [[#120]](https://github.com/ManageIQ/manageiq-providers-azure_stack/pull/120)
* Drop build stats since buildstats.info is dead [[#117]](https://github.com/ManageIQ/manageiq-providers-azure_stack/pull/117)
* [SPASSKY] Lockdown Ruby version to Ruby 3.3 [[#116]](https://github.com/ManageIQ/manageiq-providers-azure_stack/pull/116)
* Inherit renovate config from a central location [[#115]](https://github.com/ManageIQ/manageiq-providers-azure_stack/pull/115)
* Use forked gems with smaller footprint [[#112]](https://github.com/ManageIQ/manageiq-providers-azure_stack/pull/112)
* Testing with ruby 3.2, 3.3 [[#111]](https://github.com/ManageIQ/manageiq-providers-azure_stack/pull/111)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-cisco_intersight](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/compare/radjabov-2...spassky-1)

### Bug

* Fix URL override not being used for API calls [[#126]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/126)

### Enhancement

* Switch to use VcrSecrets helper from core [[#136]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/136)

### Other

* Update Yarn to v4.10.3 [[#142]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/142)
* Update Yarn to v4.9.4 [[#141]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/141)
* Update Yarn to v4.9.3 [[#140]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/140)
* Cleanup files for cleaner merge backs [[#139]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/139)
* Update actions/checkout action to v5 [[#138]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/138)
* Drop to_s on engine paths [[#137]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/137)
* Update Yarn to v4.9.2 [[#135]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/135)
* Drop build stats since buildstats.info is dead [[#134]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/134)
* Update minimum node version to 20.19.1 [[#133]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/133)
* Update Yarn to v4.9.1 [[#132]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/132)
* Update Yarn to v4.9.0 [[#131]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/131)
* Update Yarn to v4.7.0 [[#130]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/130)
* [SPASSKY] Lockdown Ruby version to Ruby 3.3 [[#129]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/129)
* Update Yarn to v4.6.0 [[#127]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/127)
* Inherit renovate config from a central location [[#128]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/128)
* Update Yarn to v4.5.3 [[#125]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/125)
* Update Yarn to v4.5.2 [[#124]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/124)
* Update Yarn to v4.5.1 [[#120]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/120)
* Test with Ruby 3.1 and 3.3 [[#122]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/122)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-embedded_terraform](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/compare/radjabov-2...spassky-1)

### Bug

* fix fetching input_vars from Provision job, in Retirement action [[#105]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/105)
* Fix input_vars fetching from job options in Job [[#104]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/104)
* Fix liveness & readiness probe endpoint for terraform-runner [[#95]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/95)

### Enhancement

* Change podman root containers/storage directory [[#102]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/102)
* Drop VCR secrets since we don't use VCR in this repo [[#106]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/106)
* Remove redundant extra_vars, as input_vars from service dialog is used for Terraform Template [[#100]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/100)
* Expose ServiceTerraformTemplate#execute without wait [[#99]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/99)
* Support reconfigure action for ServiceTerraformTemplate [[#94]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/94)
* Support reconfigure(update) action in Terraform::Runner client [[#93]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/93)
* Use checkout_git_repository block option [[#79]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/79)
* Add dialog fields based on terraform type constraints [[#89]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/89)
* Use terraform-runner /live api in Terraform::Runner.available? method [[#86]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/86)
* Retire terraform runner stack [[#71]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/71)

### Other

* Cleanup files for cleaner merge backs [[#109]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/109)
* Update actions/checkout action to v5 [[#108]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/108)
* Drop to_s on engine paths [[#107]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/107)
* Delete unused blacklisted_event_names setting [[#92]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/92)
* [SPASSKY] Lockdown Ruby version to Ruby 3.3 [[#91]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/91)
* Inherit renovate config from a central location [[#90]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/90)
* test with Ruby3.3 [[#85]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/85)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-foreman](https://github.com/ManageIQ/manageiq-providers-foreman/compare/radjabov-2...spassky-1)

### Bug

* Disable scheduled refresh for provision child manager [[#134]](https://github.com/ManageIQ/manageiq-providers-foreman/pull/134)

### Enhancement

* Switch to use VcrSecrets helper from core [[#140]](https://github.com/ManageIQ/manageiq-providers-foreman/pull/140)

### Other

* Bump foreman_api_client to v1.1 [[#144]](https://github.com/ManageIQ/manageiq-providers-foreman/pull/144)
* Cleanup files for cleaner merge backs [[#143]](https://github.com/ManageIQ/manageiq-providers-foreman/pull/143)
* Update actions/checkout action to v5 [[#142]](https://github.com/ManageIQ/manageiq-providers-foreman/pull/142)
* Drop to_s on engine paths [[#141]](https://github.com/ManageIQ/manageiq-providers-foreman/pull/141)
* Drop build stats since buildstats.info is dead [[#138]](https://github.com/ManageIQ/manageiq-providers-foreman/pull/138)
* [SPASSKY] Lockdown Ruby version to Ruby 3.3 [[#137]](https://github.com/ManageIQ/manageiq-providers-foreman/pull/137)
* Inherit renovate config from a central location [[#136]](https://github.com/ManageIQ/manageiq-providers-foreman/pull/136)
* Testing with ruby 3.2, 3.3 [[#133]](https://github.com/ManageIQ/manageiq-providers-foreman/pull/133)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-google](https://github.com/ManageIQ/manageiq-providers-google/compare/radjabov-2...spassky-1)

### Bug

* Update to fog-google v1.25.0 [[#276]](https://github.com/ManageIQ/manageiq-providers-google/pull/276)
* Add checks for instances without a disk during refresh [[#274]](https://github.com/ManageIQ/manageiq-providers-google/pull/274)

### Enhancement

* Switch to use VcrSecrets helper from core [[#280]](https://github.com/ManageIQ/manageiq-providers-google/pull/280)
* Add ContainerProject Subclass [[#279]](https://github.com/ManageIQ/manageiq-providers-google/pull/279)

### Other

* Cleanup files for cleaner merge backs [[#283]](https://github.com/ManageIQ/manageiq-providers-google/pull/283)
* Update actions/checkout action to v5 [[#282]](https://github.com/ManageIQ/manageiq-providers-google/pull/282)
* Drop to_s on engine paths [[#281]](https://github.com/ManageIQ/manageiq-providers-google/pull/281)
* Drop build stats since buildstats.info is dead [[#277]](https://github.com/ManageIQ/manageiq-providers-google/pull/277)
* [SPASSKY] Lockdown Ruby version to Ruby 3.3 [[#275]](https://github.com/ManageIQ/manageiq-providers-google/pull/275)
* Inherit renovate config from a central location [[#273]](https://github.com/ManageIQ/manageiq-providers-google/pull/273)
* Testing with ruby 3.2, 3.3 [[#270]](https://github.com/ManageIQ/manageiq-providers-google/pull/270)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-ibm_cic](https://github.com/ManageIQ/manageiq-providers-ibm_cic/compare/radjabov-2...spassky-1)

### Bug

* Add missing image references for vendor cinder and swift [[#58]](https://github.com/ManageIQ/manageiq-providers-ibm_cic/pull/58)
* Move default filtered events to settings [[#56]](https://github.com/ManageIQ/manageiq-providers-ibm_cic/pull/56)

### Enhancement

* Switch to use VcrSecrets helper from core [[#60]](https://github.com/ManageIQ/manageiq-providers-ibm_cic/pull/60)

### Other

* Cleanup files for cleaner merge backs [[#63]](https://github.com/ManageIQ/manageiq-providers-ibm_cic/pull/63)
* Update actions/checkout action to v5 [[#62]](https://github.com/ManageIQ/manageiq-providers-ibm_cic/pull/62)
* Drop to_s on engine paths [[#61]](https://github.com/ManageIQ/manageiq-providers-ibm_cic/pull/61)
* Drop build stats since buildstats.info is dead [[#59]](https://github.com/ManageIQ/manageiq-providers-ibm_cic/pull/59)
* [SPASSKY] Lockdown Ruby version to Ruby 3.3 [[#57]](https://github.com/ManageIQ/manageiq-providers-ibm_cic/pull/57)
* Inherit renovate config from a central location [[#55]](https://github.com/ManageIQ/manageiq-providers-ibm_cic/pull/55)
* Test with Ruby 3.1 and 3.3 [[#53]](https://github.com/ManageIQ/manageiq-providers-ibm_cic/pull/53)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-ibm_cloud](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/compare/radjabov-2...spassky-1)

### Bug

* Fix uninitialized constant IBMCloudSdkCore [[#526]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/526)
* Fix metrics endpoint DDF Form [[#523]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/523)

### Enhancement

* Replace PowerVS System Pools API with Datacenters API [[#536]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/536)
* Switch to use VcrSecrets helper from core [[#538]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/538)
* Add ContainerProject Subclass [[#535]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/535)
* unexpose endpoints [[#534]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/534)
* add class_name for virt has_many_through [[#533]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/533)
* Add schedule tab with "Time until Retirement" [[#520]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/520)

### Other

* Update Yarn to v4.10.3 [[#544]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/544)
* Update Yarn to v4.9.4 [[#543]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/543)
* Update Yarn to v4.9.3 [[#542]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/542)
* Cleanup files for cleaner merge backs [[#541]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/541)
* Update actions/checkout action to v5 [[#540]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/540)
* Drop to_s on engine paths [[#539]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/539)
* use virtual_has_many :through to parent manager [[#532]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/532)
* Use virtual_has_many for virtual relations [[#531]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/531)
* Update Yarn to v4.9.2 [[#529]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/529)
* Drop build stats since buildstats.info is dead [[#528]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/528)
* Use SSHKey.sha256_fingerprint instead of sha1 [[#527]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/527)
* Update minimum node version to 20.19.1 [[#521]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/521)
* Update Yarn to v4.9.1 [[#518]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/518)
* Update Yarn to v4.9.0 [[#517]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/517)
* Update Yarn to v4.7.0 [[#516]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/516)
* [SPASSKY] Lockdown Ruby version to Ruby 3.3 [[#515]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/515)
* Update Yarn to v4.6.0 [[#513]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/513)
* Inherit renovate config from a central location [[#514]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/514)
* Update Yarn to v4.5.3 [[#512]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/512)
* Update Yarn to v4.5.2 [[#511]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/511)
* Update Yarn to v4.5.1 [[#504]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/504)
* Testing with ruby 3.2, 3.3 [[#506]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/506)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-ibm_power_hmc](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/compare/radjabov-2...spassky-1)

### Bug

* Fix event parsing [[#169]](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/169)
* Refresh entire provider for special LPAR UUID [[#164]](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/164)

### Enhancement

* Switch to use VcrSecrets helper from core [[#173]](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/173)

### Other

* Cleanup files for cleaner merge backs [[#176]](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/176)
* Update actions/checkout action to v5 [[#175]](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/175)
* Drop to_s on engine paths [[#174]](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/174)
* Drop build stats since buildstats.info is dead [[#172]](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/172)
* Move secrets calls into the factory methods [[#171]](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/171)
* [SPASSKY] Lockdown Ruby version to Ruby 3.3 [[#170]](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/170)
* Inherit renovate config from a central location [[#168]](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/168)
* Parse the event url with Regex not split [[#167]](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/167)
* Make internal EventTargetParser methods private [[#165]](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/165)
* Testing with ruby 3.3 [[#163]](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/163)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-ibm_power_vc](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/compare/radjabov-2...spassky-1)

### Bug

* Move default filtered events to settings [[#126]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/126)

### Enhancement

* Switch to use VcrSecrets helper from core [[#135]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/135)

### Other

* Update Yarn to v4.10.3 [[#141]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/141)
* Update Yarn to v4.9.4 [[#140]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/140)
* Update Yarn to v4.9.3 [[#139]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/139)
* Cleanup files for cleaner merge backs [[#138]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/138)
* Update actions/checkout action to v5 [[#137]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/137)
* Drop to_s on engine paths [[#136]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/136)
* Update Yarn to v4.9.2 [[#133]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/133)
* Drop build stats since buildstats.info is dead [[#132]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/132)
* Update minimum node version to 20.19.1 [[#131]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/131)
* Update Yarn to v4.9.1 [[#130]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/130)
* Update Yarn to v4.9.0 [[#129]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/129)
* Update Yarn to v4.7.0 [[#128]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/128)
* [SPASSKY] Lockdown Ruby version to Ruby 3.3 [[#127]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/127)
* Update Yarn to v4.6.0 [[#124]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/124)
* Inherit renovate config from a central location [[#125]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/125)
* Update Yarn to v4.5.3 [[#123]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/123)
* Update Yarn to v4.5.2 [[#122]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/122)
* Update Yarn to v4.5.1 [[#117]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/117)
* Testing with ruby 3.2, 3.3 [[#119]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/119)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-ibm_terraform](https://github.com/ManageIQ/manageiq-providers-ibm_terraform/compare/radjabov-2...spassky-1)

### Enhancement

* Switch to use VcrSecrets helper from core [[#118]](https://github.com/ManageIQ/manageiq-providers-ibm_terraform/pull/118)

### Other

* Cleanup files for cleaner merge backs [[#121]](https://github.com/ManageIQ/manageiq-providers-ibm_terraform/pull/121)
* Update actions/checkout action to v5 [[#120]](https://github.com/ManageIQ/manageiq-providers-ibm_terraform/pull/120)
* Drop to_s on engine paths [[#119]](https://github.com/ManageIQ/manageiq-providers-ibm_terraform/pull/119)
* Drop build stats since buildstats.info is dead [[#116]](https://github.com/ManageIQ/manageiq-providers-ibm_terraform/pull/116)
* [SPASSKY] Lockdown Ruby version to Ruby 3.3 [[#115]](https://github.com/ManageIQ/manageiq-providers-ibm_terraform/pull/115)
* Inherit renovate config from a central location [[#114]](https://github.com/ManageIQ/manageiq-providers-ibm_terraform/pull/114)
* Test with Ruby 3.1 and 3.3 [[#112]](https://github.com/ManageIQ/manageiq-providers-ibm_terraform/pull/112)
* Testing with ruby 3.2, 3.3 [[#111]](https://github.com/ManageIQ/manageiq-providers-ibm_terraform/pull/111)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-kubernetes](https://github.com/ManageIQ/manageiq-providers-kubernetes/compare/radjabov-2...spassky-1)

### Bug

* Fix Scanning Job spec failure private method [[#550]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/550)
* Fix security_protocol not passed to kubevirt [[#547]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/547)

### Enhancement

* Create, update, delete container projects [[#554]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/554)
* Switch to use VcrSecrets helper from core [[#555]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/555)
* Add ContainerProject subclass [[#553]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/553)

### Other

* Cleanup files for cleaner merge backs [[#558]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/558)
* Update actions/checkout action to v5 [[#557]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/557)
* Drop to_s on engine paths [[#556]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/556)
* Drop build stats since buildstats.info is dead [[#551]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/551)
* Remove cben from CODEOWNERS [[#549]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/549)
* Drop old MonitoringManager vcr cassettes [[#548]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/548)
* Delete unused hawkular/alerts endpoints [[#546]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/546)
* [SPASSKY] Lockdown Ruby version to Ruby 3.3 [[#545]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/545)
* Inherit renovate config from a central location [[#544]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/544)
* Testing with ruby 3.2, 3.3 [[#540]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/540)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-kubevirt](https://github.com/ManageIQ/manageiq-providers-kubevirt/compare/radjabov-2...spassky-1)

### Bug

* Fix full refresh collection during targeted [[#311]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/311)
* Cleanup unreachable targeted refresh code and split full/partial inventory collector [[#310]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/310)
* Fix vm spec running run strategy [[#308]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/308)
* Fix VM Provision not raising an exception on failure [[#307]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/307)
* Fix cloud_user_password v2-key encrypted [[#282]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/282)

### Enhancement

* Allow VM reconfigure with instance_types / flavors [[#299]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/299)
* Switch to use VcrSecrets helper from core [[#298]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/298)
* Collect kubevirt instance types [[#288]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/288)
* VM Reconfigure [[#285]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/285)
* Parse VM Sockets and Threads [[#287]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/287)
* Parse host memory and cpu [[#283]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/283)
* Replace fog-kubevirt with kubevirt-sdk-ruby [[#276]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/276)
* Add a kubevirt logger [[#279]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/279)
* Restart a Virtual Machine [[#263]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/263)
* Create snapshot for a Virtual Machine [[#267]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/267)
* KubeVirt VM Metrics Capture [[#260]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/260)
* Persist VM with host [[#262]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/262)
* Add VM event_groups to settings [[#257]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/257)
* KubeVirt Events Capture [[#256]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/256)

### Other

* Move watch notice processing into Collector [[#312]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/312)
* Cleanup files for cleaner merge backs [[#304]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/304)
* Update actions/checkout action to v5 [[#303]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/303)
* Drop to_s on engine paths [[#300]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/300)
* Drop build stats since buildstats.info is dead [[#295]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/295)
* Cleanup unused VM Targeted Refresh Code [[#292]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/292)
* VM Clone Cleanups [[#284]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/284)
* Fix alignment of delegate keys [[#281]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/281)
* Replace inventory/full_refresh_spec with vcr based tests [[#278]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/278)
* [SPASSKY] Lockdown Ruby version to Ruby 3.3 [[#280]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/280)
* Inherit renovate config from a central location [[#273]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/273)
* Delete unused offline_vm fixture files [[#271]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/271)
* Remove obsolete SPICE console option [[#272]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/272)
* VM event parsing specs [[#258]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/258)
* Testing with ruby 3.2, 3.3 [[#253]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/253)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-lenovo](https://github.com/ManageIQ/manageiq-providers-lenovo/compare/radjabov-2...spassky-1)

### Enhancement

* Switch to use VcrSecrets helper from core [[#431]](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/431)

### Other

* Update Yarn to v4.10.3 [[#437]](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/437)
* Update Yarn to v4.9.4 [[#436]](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/436)
* Update Yarn to v4.9.3 [[#435]](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/435)
* Cleanup files for cleaner merge backs [[#434]](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/434)
* Update actions/checkout action to v5 [[#433]](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/433)
* Drop to_s on engine paths [[#432]](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/432)
* Update Yarn to v4.9.2 [[#429]](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/429)
* Drop build stats since buildstats.info is dead [[#428]](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/428)
* Update minimum node version to 20.19.1 [[#427]](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/427)
* Update Yarn to v4.9.1 [[#426]](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/426)
* Update Yarn to v4.9.0 [[#425]](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/425)
* Update Yarn to v4.7.0 [[#424]](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/424)
* [SPASSKY] Lockdown Ruby version to Ruby 3.3 [[#423]](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/423)
* Update Yarn to v4.6.0 [[#421]](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/421)
* Inherit renovate config from a central location [[#422]](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/422)
* Update Yarn to v4.5.3 [[#420]](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/420)
* Update Yarn to v4.5.2 [[#419]](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/419)
* Update Yarn to v4.5.1 [[#414]](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/414)
* Testing with ruby 3.2, 3.3 [[#417]](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/417)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-nsxt](https://github.com/ManageIQ/manageiq-providers-nsxt/compare/radjabov-2...spassky-1)

### Enhancement

* Switch to use VcrSecrets helper from core [[#151]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/151)

### Other

* Update Yarn to v4.10.3 [[#158]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/158)
* Update Yarn to v4.9.4 [[#156]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/156)
* Update Yarn to v4.9.3 [[#155]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/155)
* Cleanup files for cleaner merge backs [[#154]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/154)
* Update actions/checkout action to v5 [[#153]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/153)
* Drop to_s on engine paths [[#152]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/152)
* Update Yarn to v4.9.2 [[#147]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/147)
* Drop build stats since buildstats.info is dead [[#146]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/146)
* Bump undici from 6.21.1 to 6.21.3 [[#145]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/145)
* Update minimum node version to 20.19.1 [[#144]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/144)
* Update Yarn to v4.9.1 [[#143]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/143)
* Update Yarn to v4.9.0 [[#142]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/142)
* Update yarn.lock to latest dependencies [[#140]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/140)
* Update paambaati/codeclimate-action action to v9 [[#141]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/141)
* Update dependency react-final-form to v6.5.9 [[#111]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/111)
* Delete unused blacklisted_event_names setting [[#136]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/136)
* Update Yarn to v4.7.0 [[#137]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/137)
* [SPASSKY] Lockdown Ruby version to Ruby 3.3 [[#135]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/135)
* Update Yarn to v4.6.0 [[#134]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/134)
* Inherit renovate config from a central location [[#133]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/133)
* Update Yarn to v4.5.3 [[#132]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/132)
* Update Yarn to v4.5.2 [[#131]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/131)
* Testing with ruby 3.2, 3.3 [[#129]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/129)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-nuage](https://github.com/ManageIQ/manageiq-providers-nuage/compare/radjabov-2...spassky-1)

### Enhancement

* Switch to use VcrSecrets helper from core [[#338]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/338)

### Other

* Update Yarn to v4.10.3 [[#344]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/344)
* Update Yarn to v4.9.4 [[#343]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/343)
* Update Yarn to v4.9.3 [[#342]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/342)
* Cleanup files for cleaner merge backs [[#341]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/341)
* Update actions/checkout action to v5 [[#340]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/340)
* Drop to_s on engine paths [[#339]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/339)
* Update Yarn to v4.9.2 [[#336]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/336)
* Drop build stats since buildstats.info is dead [[#335]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/335)
* Update minimum node version to 20.19.1 [[#334]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/334)
* Update Yarn to v4.9.1 [[#333]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/333)
* Update Yarn to v4.9.0 [[#332]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/332)
* Update Yarn to v4.7.0 [[#331]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/331)
* [SPASSKY] Lockdown Ruby version to Ruby 3.3 [[#330]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/330)
* Use ubuntu-latest now that it is 24.04 [[#329]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/329)
* Update Yarn to v4.6.0 [[#327]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/327)
* Inherit renovate config from a central location [[#328]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/328)
* Use ubuntu-24.04 to fix libqpid-proton11 install [[#326]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/326)
* Update Yarn to v4.5.3 [[#325]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/325)
* Update Yarn to v4.5.2 [[#324]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/324)
* Update Yarn to v4.5.1 [[#319]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/319)
* Testing with ruby 3.2, 3.3 [[#322]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/322)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-openshift](https://github.com/ManageIQ/manageiq-providers-openshift/compare/radjabov-2...spassky-1)

### Bug

* Delete unused PartialTargetRefresh class for OSV [[#282]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/282)
* Delete unused InfraManager::Connection subclass [[#280]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/280)
* Fix OSV DDF form pivot value [[#277]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/277)
* Delegate refresh_ems class method to parent container manager [[#272]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/272)

### Enhancement

* Switch to use VcrSecrets helper from core [[#288]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/288)
* Display name for container project [[#287]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/287)
* Add ContainerProject Subclass [[#286]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/286)
* Collect OpenShift instance types [[#284]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/284)
* Openshift Virtualization VM Metrics Capture [[#275]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/275)
* Openshift Virtualization Events Capture [[#273]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/273)

### Other

* Split full and partial inventory collector classes [[#293]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/293)
* Cleanup files for cleaner merge backs [[#292]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/292)
* Update actions/checkout action to v5 [[#291]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/291)
* Drop to_s on engine paths [[#290]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/290)
* Drop build stats since buildstats.info is dead [[#283]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/283)
* Remove cben from CODEOWNERS [[#281]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/281)
* Replace fog-kubevirt with kubevirt-sdk-ruby gem [[#276]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/276)
* [SPASSKY] Lockdown Ruby version to Ruby 3.3 [[#279]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/279)
* Inherit renovate config from a central location [[#278]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/278)
* Testing with ruby 3.2, 3.3 [[#270]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/270)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-openstack](https://github.com/ManageIQ/manageiq-providers-openstack/compare/radjabov-2...spassky-1)

### Bug

* Fix: Enhance CloudManager EventTargetParser for Identity project events [[#928]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/928)
* Fix missing OpenStack VM CPU Usage Metrics [[#923]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/923)
* Fix CloudTenant creation invalid parent_id [[#914]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/914)
* Bump fog-openstack to v1.1.4 [[#905]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/905)
* Delegate refresh_ems class method to parent cloud manager [[#895]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/895)
* Add the volume to the root disk (vda) if the selected flavor has a ro… [[#894]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/894)

### Enhancement

* Feat: Support nested JSON parsing for Oslo.messaging v2.0 notifications [[#927]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/927)
* Switch to use VcrSecrets helper from core [[#915]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/915)
* Through class name [[#912]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/912)

### Other

* Move generic _queue methods into base NetworkManager [[#920]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/920)
* Cleanup files for cleaner merge backs [[#919]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/919)
* Update actions/checkout action to v5 [[#918]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/918)
* Drop to_s on engine paths [[#917]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/917)
* Port should be an int in vcr secrets [[#916]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/916)
* Use virtual_has_many instead of virtual_delegate for relations [[#911]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/911)
* Drop build stats since buildstats.info is dead [[#909]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/909)
* [SPASSKY] Lockdown Ruby version to Ruby 3.3 [[#906]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/906)
* Rename blacklisted event names [[#903]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/903)
* Ubuntu-latest is 24.04 now [[#902]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/902)
* Inherit renovate config from a central location [[#900]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/900)
* Use ubuntu-24.04 to fix libqpid-proton11 [[#897]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/897)
* Testing with ruby 3.2, 3.3 [[#891]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/891)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-oracle_cloud](https://github.com/ManageIQ/manageiq-providers-oracle_cloud/compare/radjabov-2...spassky-1)

### Enhancement

* Switch to use VcrSecrets helper from core [[#116]](https://github.com/ManageIQ/manageiq-providers-oracle_cloud/pull/116)
* Add ContainerProject Subclass [[#115]](https://github.com/ManageIQ/manageiq-providers-oracle_cloud/pull/115)

### Other

* Cleanup files for cleaner merge backs [[#119]](https://github.com/ManageIQ/manageiq-providers-oracle_cloud/pull/119)
* Update actions/checkout action to v5 [[#118]](https://github.com/ManageIQ/manageiq-providers-oracle_cloud/pull/118)
* Drop to_s on engine paths [[#117]](https://github.com/ManageIQ/manageiq-providers-oracle_cloud/pull/117)
* Drop build stats since buildstats.info is dead [[#113]](https://github.com/ManageIQ/manageiq-providers-oracle_cloud/pull/113)
* [SPASSKY] Lockdown Ruby version to Ruby 3.3 [[#112]](https://github.com/ManageIQ/manageiq-providers-oracle_cloud/pull/112)
* Inherit renovate config from a central location [[#111]](https://github.com/ManageIQ/manageiq-providers-oracle_cloud/pull/111)
* Test with Ruby 3.1 and 3.3 [[#109]](https://github.com/ManageIQ/manageiq-providers-oracle_cloud/pull/109)
* Testing with ruby 3.2, 3.3 [[#107]](https://github.com/ManageIQ/manageiq-providers-oracle_cloud/pull/107)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-ovirt](https://github.com/ManageIQ/manageiq-providers-ovirt/compare/radjabov-2...spassky-1)

### Bug

* Fix disks reconfigure via API [[#690]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/690)
* Move default filtered event names to Settings [[#685]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/685)

### Enhancement

* Switch to use VcrSecrets helper from core [[#692]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/692)

### Other

* Bump ovirt-engine-sdk to v4.6.1 [[#699]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/699)
* Move generic _queue methods into base NetworkManager [[#696]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/696)
* Cleanup files for cleaner merge backs [[#695]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/695)
* Update actions/checkout action to v5 [[#694]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/694)
* Drop to_s on engine paths [[#693]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/693)
* Drop build stats since buildstats.info is dead [[#689]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/689)
* Delete unused blacklisted_event_names [[#688]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/688)
* [SPASSKY] Lockdown Ruby version to Ruby 3.3 [[#687]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/687)
* Use filtered_event_names from core [[#686]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/686)
* Inherit renovate config from a central location [[#684]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/684)
* Testing with ruby 3.2, 3.3 [[#678]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/678)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-red_hat_virtualization](https://github.com/ManageIQ/manageiq-providers-red_hat_virtualization/compare/radjabov-2...spassky-1)

### Bug

* Move filtered event types to Settings [[#59]](https://github.com/ManageIQ/manageiq-providers-red_hat_virtualization/pull/59)

### Enhancement

* Switch to use VcrSecrets helper from core [[#63]](https://github.com/ManageIQ/manageiq-providers-red_hat_virtualization/pull/63)

### Other

* Cleanup files for cleaner merge backs [[#65]](https://github.com/ManageIQ/manageiq-providers-red_hat_virtualization/pull/65)
* Update actions/checkout action to v5 [[#64]](https://github.com/ManageIQ/manageiq-providers-red_hat_virtualization/pull/64)
* Drop build stats since buildstats.info is dead [[#62]](https://github.com/ManageIQ/manageiq-providers-red_hat_virtualization/pull/62)
* Delete unused blacklisted_event_names setting [[#61]](https://github.com/ManageIQ/manageiq-providers-red_hat_virtualization/pull/61)
* [SPASSKY] Lockdown Ruby version to Ruby 3.3 [[#60]](https://github.com/ManageIQ/manageiq-providers-red_hat_virtualization/pull/60)
* Inherit renovate config from a central location [[#58]](https://github.com/ManageIQ/manageiq-providers-red_hat_virtualization/pull/58)
* Test with ruby 3.3 [[#56]](https://github.com/ManageIQ/manageiq-providers-red_hat_virtualization/pull/56)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-redfish](https://github.com/ManageIQ/manageiq-providers-redfish/compare/radjabov-2...spassky-1)

### Enhancement

* Switch to use VcrSecrets helper from core [[#222]](https://github.com/ManageIQ/manageiq-providers-redfish/pull/222)

### Other

* Update Yarn to v4.10.3 [[#228]](https://github.com/ManageIQ/manageiq-providers-redfish/pull/228)
* Update Yarn to v4.9.4 [[#227]](https://github.com/ManageIQ/manageiq-providers-redfish/pull/227)
* Update Yarn to v4.9.3 [[#226]](https://github.com/ManageIQ/manageiq-providers-redfish/pull/226)
* Cleanup files for cleaner merge backs [[#225]](https://github.com/ManageIQ/manageiq-providers-redfish/pull/225)
* Update actions/checkout action to v5 [[#224]](https://github.com/ManageIQ/manageiq-providers-redfish/pull/224)
* Drop to_s on engine paths [[#223]](https://github.com/ManageIQ/manageiq-providers-redfish/pull/223)
* Update Yarn to v4.9.2 [[#220]](https://github.com/ManageIQ/manageiq-providers-redfish/pull/220)
* Drop build stats since buildstats.info is dead [[#219]](https://github.com/ManageIQ/manageiq-providers-redfish/pull/219)
* Update minimum node version to 20.19.1 [[#218]](https://github.com/ManageIQ/manageiq-providers-redfish/pull/218)
* Update Yarn to v4.9.1 [[#217]](https://github.com/ManageIQ/manageiq-providers-redfish/pull/217)
* Update Yarn to v4.9.0 [[#216]](https://github.com/ManageIQ/manageiq-providers-redfish/pull/216)
* Update Yarn to v4.7.0 [[#215]](https://github.com/ManageIQ/manageiq-providers-redfish/pull/215)
* [SPASSKY] Lockdown Ruby version to Ruby 3.3 [[#213]](https://github.com/ManageIQ/manageiq-providers-redfish/pull/213)
* Update Yarn to v4.6.0 [[#211]](https://github.com/ManageIQ/manageiq-providers-redfish/pull/211)
* Inherit renovate config from a central location [[#212]](https://github.com/ManageIQ/manageiq-providers-redfish/pull/212)
* Update Yarn to v4.5.3 [[#210]](https://github.com/ManageIQ/manageiq-providers-redfish/pull/210)
* Update Yarn to v4.5.2 [[#209]](https://github.com/ManageIQ/manageiq-providers-redfish/pull/209)
* Update Yarn to v4.5.1 [[#204]](https://github.com/ManageIQ/manageiq-providers-redfish/pull/204)
* Testing with ruby 3.2, 3.3 [[#207]](https://github.com/ManageIQ/manageiq-providers-redfish/pull/207)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-vmware](https://github.com/ManageIQ/manageiq-providers-vmware/compare/radjabov-2...spassky-1)

### Bug

* Update event_catcher gem dependencies [[#953]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/953)
* Fix vCloud and Tanzu inheriting vSphere's filtered events [[#936]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/936)
* Filter out blacklisted events in pure-ruby event catcher [[#935]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/935)
* Add specs for nic_settings customization [[#927]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/927)
* Delegate refresh_ems class method to parent cloud manager [[#925]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/925)

### Enhancement

* Add ContainerProject Subclass [[#944]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/944)
* Add an option to log XML body for VIM requests [[#930]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/930)
* Testing with ruby 3.2, 3.3 [[#923]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/923)

### Other

* Cleanup files for cleaner merge backs [[#950]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/950)
* Update actions/checkout action to v5 [[#949]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/949)
* Drop to_s on engine paths [[#948]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/948)
* Switch to use VcrSecrets helper from core [[#946]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/946)
* Drop build stats since buildstats.info is dead [[#942]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/942)
* Delete unused blacklisted_event_names setting [[#939]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/939)
* [SPASSKY] Lockdown Ruby version to Ruby 3.3 [[#938]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/938)
* Drop default_blacklisted_event_names method [[#937]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/937)
* Inherit renovate config from a central location [[#934]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/934)
* Bump ffi-vix_disklib to v1.4 for v8.0.3 support [[#924]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/924)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-workflows](https://github.com/ManageIQ/manageiq-providers-workflows/compare/radjabov-2...spassky-1)

### Bug

* Prevent Floe wait thread from starting in tests [[#146]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/146)
* Fix Typo BuiltinRunnner [[#138]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/138)
* Fix Logger error when called from service [[#135]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/135)
* Skip invalid workflows during sync [[#124]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/124)
* Fix floe bug with Parallel/Map on Kubernetes [[#123]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/123)
* Add object_type,_id to WorkflowInstance#run_queue [[#121]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/121)

### Enhancement

* Add a manageiq://api builtin method [[#144]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/144)
* Allow manageiq://provision_execute MiqProvisionTask [[#148]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/148)
* Change podman root containers/storage directory [[#131]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/131)
* Check if a workflow payload is valid during sync [[#59]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/59)
* Wrap Floe builtin methods in `manageiq://` [[#143]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/143)
* Drop VCR secrets since we don't use VCR in this repo [[#132]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/132)
* Set logger for each workflow run [[#128]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/128)
* Bump floe to v0.16.0 for ItemBatcher support [[#129]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/129)

### Other

* Fix password spec [[#147]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/147)
* Bump floe v0.17.1 for http default method GET [[#145]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/145)
* Bump floe to v0.17.0 [[#141]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/141)
* Cleanup files for cleaner merge backs [[#140]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/140)
* Use workflow credentials interface [[#139]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/139)
* Update actions/checkout action to v5 [[#137]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/137)
* Drop to_s on engine paths [[#133]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/133)
* Delete unused blacklisted_event_names [[#127]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/127)
* [SPASSKY] Lockdown Ruby version to Ruby 3.3 [[#126]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/126)
* Inherit renovate config from a central location [[#125]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/125)
* test with ruby 3.3 [[#120]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/120)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-rpm_build](https://github.com/ManageIQ/manageiq-rpm_build/compare/radjabov-2...spassky-1)

### Bug

* Allow loading Regexp and Symbol on rake release [[#608]](https://github.com/ManageIQ/manageiq-rpm_build/pull/608)
* [spassky] lockdown bundler [[#607]](https://github.com/ManageIQ/manageiq-rpm_build/pull/607)
* Disable subscription-manager rather than removing it. [[#577]](https://github.com/ManageIQ/manageiq-rpm_build/pull/577)
* [spassky] Switch to openssl from CentOS Stream since it's newer [[#565]](https://github.com/ManageIQ/manageiq-rpm_build/pull/565)
* Don't include newer openssl packages from CentOS Stream [[#559]](https://github.com/ManageIQ/manageiq-rpm_build/pull/559)
* cockpit-ssh is not available in CentOS Stream 9 [[#552]](https://github.com/ManageIQ/manageiq-rpm_build/pull/552)
* Builds frequently fail at git clean with binding.cpp being the only warning [[#550]](https://github.com/ManageIQ/manageiq-rpm_build/pull/550)
* Exit the user entrypoint on non-zero exit code [[#547]](https://github.com/ManageIQ/manageiq-rpm_build/pull/547)
* Add libyaml-devel for psych 5+ broken in #528 [[#546]](https://github.com/ManageIQ/manageiq-rpm_build/pull/546)
* Set SECRET_KEY_BASE_DUMMY=1 for random value for build with rails 7.1 [[#545]](https://github.com/ManageIQ/manageiq-rpm_build/pull/545)
* Clean hotfix directory before patching the srpm contents [[#537]](https://github.com/ManageIQ/manageiq-rpm_build/pull/537)
* Fix issues where exitstatus could be nil [[#538]](https://github.com/ManageIQ/manageiq-rpm_build/pull/538)
* Move paramiko into Dockerfile. [[#524]](https://github.com/ManageIQ/manageiq-rpm_build/pull/524)
* openssl-libs is already installed in newer UBI9 [[#520]](https://github.com/ManageIQ/manageiq-rpm_build/pull/520)

### Enhancement

* Create /var/lib/manageiq/containers/storage [[#569]](https://github.com/ManageIQ/manageiq-rpm_build/pull/569)
* Upgrade ansible/ansible-core to latest and python to 3.12 [[#573]](https://github.com/ManageIQ/manageiq-rpm_build/pull/573)
* Build rpms using ruby 3.3 [[#517]](https://github.com/ManageIQ/manageiq-rpm_build/pull/517)

### Other

* Bump packages as 9.0-24 packages are no longer on the mirrors [[#606]](https://github.com/ManageIQ/manageiq-rpm_build/pull/606)
* Update weak deps of ruby to include rubygems [[#591]](https://github.com/ManageIQ/manageiq-rpm_build/pull/591)
* Update peter-evans/repository-dispatch action to v4 [[#592]](https://github.com/ManageIQ/manageiq-rpm_build/pull/592)
* Update protobuf CVE-2025-4565 [[#584]](https://github.com/ManageIQ/manageiq-rpm_build/pull/584)
* Cleanup files for cleaner merge backs [[#585]](https://github.com/ManageIQ/manageiq-rpm_build/pull/585)
* Update actions/checkout action to v5 [[#583]](https://github.com/ManageIQ/manageiq-rpm_build/pull/583)
* Update license reference [[#581]](https://github.com/ManageIQ/manageiq-rpm_build/pull/581)
* Update python-unittest2 RPM [[#580]](https://github.com/ManageIQ/manageiq-rpm_build/pull/580)
* Drop dependencies that are now properly required by rails [[#567]](https://github.com/ManageIQ/manageiq-rpm_build/pull/567)
* Drop build stats since buildstats.info is dead [[#566]](https://github.com/ManageIQ/manageiq-rpm_build/pull/566)
* Upgrade from Node v18 to v20 [[#563]](https://github.com/ManageIQ/manageiq-rpm_build/pull/563)
* Loosen psych dependency [[#562]](https://github.com/ManageIQ/manageiq-rpm_build/pull/562)
* Update dependency rspec-rails to v8 [[#560]](https://github.com/ManageIQ/manageiq-rpm_build/pull/560)
* Use rpm version of python wheel [[#554]](https://github.com/ManageIQ/manageiq-rpm_build/pull/554)
* [SPASSKY] Lockdown Ruby version to Ruby 3.3 [[#551]](https://github.com/ManageIQ/manageiq-rpm_build/pull/551)
* Core now sets secret_key_base early for all rails processes [[#549]](https://github.com/ManageIQ/manageiq-rpm_build/pull/549)
* Sort the packages correctly [[#548]](https://github.com/ManageIQ/manageiq-rpm_build/pull/548)
* Update README.md [[#542]](https://github.com/ManageIQ/manageiq-rpm_build/pull/542)
* Update dependency psych to v5 [[#528]](https://github.com/ManageIQ/manageiq-rpm_build/pull/528)
* Update dependency rspec-rails to v7 [[#529]](https://github.com/ManageIQ/manageiq-rpm_build/pull/529)
* Add CODEOWNERS file [[#541]](https://github.com/ManageIQ/manageiq-rpm_build/pull/541)
* Inherit renovate config from a central location [[#540]](https://github.com/ManageIQ/manageiq-rpm_build/pull/540)
* Add documentation on how to build a hotfix [[#505]](https://github.com/ManageIQ/manageiq-rpm_build/pull/505)
* Configure Renovate [[#394]](https://github.com/ManageIQ/manageiq-rpm_build/pull/394)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-schema](https://github.com/ManageIQ/manageiq-schema/compare/radjabov-2...spassky-1)

### Bug

* Drop tenant use_config_for_attributes [[#792]](https://github.com/ManageIQ/manageiq-schema/pull/792)
* Fix broken ci.yaml [[#766]](https://github.com/ManageIQ/manageiq-schema/pull/766)

### Enhancement

* Add type column in container_projects table [[#794]](https://github.com/ManageIQ/manageiq-schema/pull/794)

### Other

* Drop miq_schedules.file_depot_id [[#821]](https://github.com/ManageIQ/manageiq-schema/pull/821)
* Drop log collection tables, columns, and configuration [[#820]](https://github.com/ManageIQ/manageiq-schema/pull/820)
* Upgrade rails to 7.2.3 [[#819]](https://github.com/ManageIQ/manageiq-schema/pull/819)
* Update actions/upload-artifact action to v5 [[#818]](https://github.com/ManageIQ/manageiq-schema/pull/818)
* update rack for CVE-2025-59830 [[#815]](https://github.com/ManageIQ/manageiq-schema/pull/815)
* Update manageiq-style to latest [[#788]](https://github.com/ManageIQ/manageiq-schema/pull/788)
* Update rack for CVE-2025-61772 [[#811]](https://github.com/ManageIQ/manageiq-schema/pull/811)
* upgrade Rack 2.2.18 CVE-2025-59830 [[#810]](https://github.com/ManageIQ/manageiq-schema/pull/810)
* [SPASSKY] Drop Ruby 3.4 testing on spassky [[#806]](https://github.com/ManageIQ/manageiq-schema/pull/806)
* Cleanup files for cleaner merge backs [[#808]](https://github.com/ManageIQ/manageiq-schema/pull/808)
* Update actions/checkout action to v5 [[#805]](https://github.com/ManageIQ/manageiq-schema/pull/805)
* Update dummy app to 7.2 drop 7.0 and 7.1, test with 7.2 [[#802]](https://github.com/ManageIQ/manageiq-schema/pull/802)
* Rails 7.1+ migration context simplifies our code [[#800]](https://github.com/ManageIQ/manageiq-schema/pull/800)
* Fix rack CVE-2025-46727 [[#796]](https://github.com/ManageIQ/manageiq-schema/pull/796)
* show_exceptions no longer supports true\|false [[#799]](https://github.com/ManageIQ/manageiq-schema/pull/799)
* Update test matrix, use rails 7.1 add ruby 3.4 [[#798]](https://github.com/ManageIQ/manageiq-schema/pull/798)
* Update thor gem CVE-2025-46727 [[#797]](https://github.com/ManageIQ/manageiq-schema/pull/797)
* Drop build stats since buildstats.info is dead [[#791]](https://github.com/ManageIQ/manageiq-schema/pull/791)
* [SPASSKY] Lockdown Ruby version to Ruby 3.3 [[#784]](https://github.com/ManageIQ/manageiq-schema/pull/784)
* Create SettingsChanges from BlacklistedEvents [[#783]](https://github.com/ManageIQ/manageiq-schema/pull/783)
* Inherit renovate config from a central location [[#779]](https://github.com/ManageIQ/manageiq-schema/pull/779)
* Pin concurrent-ruby to < 1.3.5 [[#780]](https://github.com/ManageIQ/manageiq-schema/pull/780)
* update manageiq-style [[#778]](https://github.com/ManageIQ/manageiq-schema/pull/778)
* Allow the rails method to be called and change the result only when called from the migration [[#776]](https://github.com/ManageIQ/manageiq-schema/pull/776)
* Allow test failures on 7.1 and 7.2 for now [[#767]](https://github.com/ManageIQ/manageiq-schema/pull/767)
* Testing with ruby 3.2, 3.3 [[#765]](https://github.com/ManageIQ/manageiq-schema/pull/765)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-ui-classic](https://github.com/ManageIQ/manageiq-ui-classic/compare/radjabov-2...spassky-1)

### Bug

* Fix RJS error when deleting policy action from summary page [[#9752]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9752)
* Fix yarn.lock after simultaneous merges [[#9729]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9729)
* Fix prov_get_form_vars for ConfigurationScriptBase [[#9728]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9728)
* Fix CSS class name conflict in VM snapshot component affecting dashboard layout [[#9726]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9726)
* Fix diagnostics database page [[#9700]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9700)
* Fix eslint version in qlty config [[#9680]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9680)
* Make database cleaner active record seeded deletion start/clean more threadsafe [[#9672]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9672)
* Fixed the copy request dialog form [[#9482]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9482)
* Fix typos in comments/strings in application helper and controller [[#9674]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9674)
* Not all the tests in the describe blocks needed restore [[#9660]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9660)
* Fix single tag page bug [[#9622]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9622)
* Fix copy code from codemirror [[#9642]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9642)
* Fix the tag mapping form [[#9612]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9612)
* rexml 3.4.3 Document.new no longer accepts strings with no root element [[#9610]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9610)
* Fix false negative in PingController after Rails 7.2 [[#9619]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9619)
* Fix button form save button validation [[#9501]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9501)
* Fix toolbar button function calls [[#9605]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9605)
* Fix console.warn [[#9604]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9604)
* Fix start page not being honoured [[#9520]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9520)
* Resolve duplicate Basic Info heading in create catalog item form [[#9568]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9568)
* Fix builtin method summary screen [[#9551]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9551)
* Bypass feature validation for dynamic tenant features [[#9523]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9523)
* Fix import form errors [[#9498]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9498)
* Revert "Merge pull request #9505" [[#9553]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9553)
* Fix the settings ops schedule toolbar [[#9505]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9505)
* Fix task page bugs [[#9479]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9479)
* Replace getDay() with getDate() for accurate date value [[#9511]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9511)
* Fix tag multi select reset on click [[#9500]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9500)
* Update UI json translation files [[#9509]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9509)
* Update UI json translation files [[#9502]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9502)
* Revert "Fix searchbar formtoken issue" [[#9477]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9477)
* Fix button group reorder form buttons [[#9475]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9475)
* Fix the missing service vms table [[#9463]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9463)
* Fix error on VM reconfigure when host is nil [[#9474]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9474)
* Fixes server error during VM reconfigure [[#9466]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9466)
* Drop Tenant#use_config_for_attributes [[#9455]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9455)
* Fix button form [[#9467]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9467)
* Fix inline method automplete issue [[#9424]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9424)
* Support string interval coming from report preview [[#9465]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9465)
* Fix simulation form and its cypress tests [[#9453]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9453)
* Fix wait_for_task comparison of String with 5000 [[#9444]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9444)
* Revert jquery 3.7.1 upgrade [[#9438]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9438)
* Define a custom script dataType converter, don't override the base one [[#9410]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9410)
* Fix jquery override [[#9426]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9426)
* Explain why we have two script text converters [[#9427]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9427)
* Remove console log from jquery override [[#9428]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9428)
* Fix Settings Tag Category Edit Page [[#9429]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9429)
* Use ServiceTemplate.available_managers for AWX/Ansible Tower [[#9440]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9440)
* Fix incorrect Ansible Tower references [[#9439]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9439)
* Fix cypress tests to reflect new FQ name format [[#9435]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9435)
* Fix `ConfigurationJobController` using AnsibleTower [[#9415]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9415)
* Fixes alert with event threshold [[#9408]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9408)
* Fix the git refresh form [[#9420]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9420)
* Fix configuration_script/show record with missing values [[#9422]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9422)
* Fix settings authentication form provider type ids [[#9392]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9392)
* Fix tag category pages [[#9389]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9389)
* Fix catalog item tags [[#9376]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9376)
* Fix provider dashboard charts converted time bug [[#9371]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9371)
* Fix searchbar formtoken issue [[#9367]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9367)
* Handle customization for all provisions [[#9377]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9377)
* Wait for task no longer  [[#9352]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9352)
* Use params[:name] over session[:async][:params][:name] [[#9358]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9358)
* Fixes 500 error occurred during refreshing of a provider instance [[#9353]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9353)
* Fix table pagination setting [[#9324]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9324)
* Fix Key Value List Component Typing Bug [[#9304]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9304)

### Enhancement

* Include invalid workflows and disable them in the embedded workflow component [[#9708]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9708)
* Convert vm snapshot form [[#9639]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9639)
* Workflow entry point enhancements [[#9548]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9548)
* Updates for ConfigurationScript Service Provisioning [[#9683]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9683)
* Add miq data table commands [[#9691]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9691)
* Enhance expect alerts command [[#9694]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9694)
* Enhance form element selectors [[#9689]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9689)
* Enhanced validateFormFields to assert checkbox state [[#9690]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9690)
* Expose cypress's --spec pattern option from yarn and therefore rake [[#9688]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9688)
* Workflow table remove icon text [[#9693]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9693)
* Add columns for payload valid and error for workflows [[#9632]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9632)
* Add element validation commands [[#9635]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9635)
* Better PingController errors [[#9621]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9621)
* Enhance intercept api command [[#9623]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9623)
* Updated to throw an error when the specified toolbar option is disabled [[#9618]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9618)
* Enhance accordion command [[#9617]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9617)
* Enhance select accordion item [[#9616]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9616)
* Enhance intercept api command [[#9607]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9607)
* Rails 7.2 - Fix breakage and deprecation [[#9507]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9507)
* Add embedded automate and workflow entry point UI components [[#9404]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9404)
* Remove redundant catalog variables (extra_vars) for terraform-template [[#9449]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9449)
* Add terraform enterprise catalog support [[#9419]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9419)
* Add running a simulated queue worker during cypress tests [[#9416]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9416)
* Convert textualempty table to react [[#9261]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9261)
* Automate Simulation Conversion Form from HAML to React [[#9202]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9202)
* Transforms haml forms to react for Add and Edit feature of Automate Class [[#9301]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9301)
* Convert application settings tabs and subtabs [[#9317]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9317)
* Making tags more readable [[#9320]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9320)
* Convert settings details tab to use carbon components [[#9270]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9270)

### Other

* Update react router [[#9775]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9775)
* Update dependency cypress to v15.7.1 [[#9744]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9744)
* Update to cypress 15.7.0 [[#9735]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9735)
* Upgrade glob for CVE-2025-64756 [[#9732]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9732)
* Update yarn.lock with latest dependencies [[#9641]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9641)
* Update dependency js-yaml to ~3.14.0 [SECURITY] [[#9723]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9723)
* Quiet the noisy cypress output in the beginning of the run [[#9734]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9734)
* Fix bug where a GET triggered by a test, is processed after the test [[#9733]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9733)
* Update UI json translation files [[#9731]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9731)
* [SPASSKY] Yarn lock update [[#9725]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9725)
* Update ui-components to 1.6.1 [[#9714]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9714)
* Replace cypress manual UI catalog setup with factories [[#9699]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9699)
* Drop Log Collection validation [[#9711]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9711)
* Update get-intrinsic [[#9698]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9698)
* Enhance select accordion item [[#9706]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9706)
* Chain .then() directly to interceptApi for returning zone name [[#9707]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9707)
* Drop Diagnostics > Collect Logs [[#9704]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9704)
* Enhance form element selectors [[#9701]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9701)
* Remove unnecessary ivars [[#9702]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9702)
* Enhance select accordion item [[#9705]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9705)
* Remove old angular ae resolve options code [[#9662]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9662)
* Cypress: Replace UI driven cleanup with db state restore [[#9697]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9697)
* Add explicit status code assertion for Add Zone API [[#9695]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9695)
* Revert "Ensure actioncable connection is not a pinned connection" [[#9696]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9696)
* Revert "Update dependency bootstrap-switch to v3.4.0" [[#9679]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9679)
* Added automated tests with cypress for catalog form [[#9657]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9657)
* Ensure disk resize request works in French UI [[#9682]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9682)
* Incorporating changes from #9653 [[#9687]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9687)
* Add form element selectors [[#9656]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9656)
* Add expect dual list command [[#9652]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9652)
* Rollback the tenant test changes due to timing issue failures [[#9684]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9684)
* Made the selector more generic [[#9685]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9685)
* Enhance expect alerts command [[#9653]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9653)
* Added automated tests with cypress for copy-catalog form [[#9677]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9677)
* Added automated tests with cypress for Zone form [[#9535]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9535)
* Update dependency carbon-components-react to ~7.60.0 [[#9664]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9664)
* Update dependency connected-react-router to ~6.9.0 [[#9668]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9668)
* More typos, this one is a CONSTANT and in code [[#9675]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9675)
* Add dual list commands [[#9654]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9654)
* Add miq data table commands [[#9655]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9655)
* Read the node version from package.json in CI [[#9671]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9671)
* Update dependency classnames to ~2.5.0 [[#9666]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9666)
* Update dependency angular-ui-sortable to ~0.19.0 [[#9636]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9636)
* Update dependency babel-loader to ~8.4.0 [[#9637]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9637)
* Update dependency webpack-dev-server to v5 [SECURITY] [[#9577]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9577)
* Update dependency bootstrap-switch to v3.4.0 [[#9638]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9638)
* Update engines.node version to 20.19.5 [[#9661]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9661)
* Update babel monorepo [[#9587]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9587)
* Move afterEach after the before and/or to the higher context [[#9658]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9658)
* Cypress on rails [[#9633]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9633)
* Update request [[#9647]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9647)
* Update package.json file [[#9648]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9648)
* Switch to qlty [[#9645]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9645)
* Drop guard-rspec [[#9643]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9643)
* Replace babel-eslint with @babel/eslint-parser in eslint config [[#9640]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9640)
* Added automated tests with cypress for Namespace form [[#9517]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9517)
* Update dependency angular-mocks to ~1.8.0 [[#9611]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9611)
* Replace dependency babel-eslint with @babel/eslint-parser ~7.11.0 [[#9583]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9583)
* Update Yarn to v4.10.3 [[#9627]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9627)
* Update yarn.lock with latest dependencies [[#9519]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9519)
* Schedule form cypress refactor [[#9549]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9549)
* Added automated tests with cypress for Tenants form [[#9532]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9532)
* Auto-cancel in-progress CI builds for branches and PRs [[#9630]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9630)
* Update actions/setup-node action to v5 [[#9628]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9628)
* Ignore push event on bot PRs [[#9629]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9629)
* Added automated tests with cypress for C & U Gap Collection form [[#9562]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9562)
* Switch cy.on to cy.once to unregister handler after scope [[#9615]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9615)
* Fixed error message typo in button selector command [[#9614]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9614)
* Enhance form element selectors [[#9598]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9598)
* Fix minor sorting nitpick [[#9606]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9606)
* Update react-markdown [[#9609]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9609)
* Add select tab command [[#9602]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9602)
* Replaced jQuery trigger-click with cy.click() in accordion command [[#9603]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9603)
* Update UI json translation files [[#9601]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9601)
* Update Yarn to v4.9.4 [[#9597]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9597)
* Split textConstants object into individual variables [[#9575]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9575)
* Use cypress 15 [[#9572]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9572)
* Update actions/checkout action to v5 [[#9580]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9580)
* Update peter-evans/create-pull-request action to v7 [[#9582]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9582)
* Update paambaati/codeclimate-action action to v9 [[#9581]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9581)
* Update Yarn to v4.9.3 [[#9579]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9579)
* Configure Renovate [[#8808]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8808)
* Update UI json translation files [[#9574]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9574)
* Follow up works from #9516 [[#9546]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9546)
* Cleanup files for cleaner merge backs [[#9558]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9558)
* Enhance intercept api command [[#9560]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9560)
* Updated selector for flash message [[#9559]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9559)
* Enhance expect alerts command [[#9557]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9557)
* Update jest, cypress packages to resolve security issues caused by form-data [[#9539]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9539)
* remove unused method [[#9556]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9556)
* Remove codemirror tech debt [[#9550]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9550)
* Moved flash message type object to a common constants file for reuse [[#9554]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9554)
* Add intercept api command [[#9552]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9552)
* Bump tmp from 0.2.3 to 0.2.4 [[#9545]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9545)
* Include accordion name in error message [[#9540]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9540)
* No longer needed since core won't enable rack attack with CYPRESS=true [[#9542]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9542)
* Enhanced README of toolbar cypress command [[#9541]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9541)
* Use the count directly to avoid 2 notifications calls per page [[#9536]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9536)
* Edit collect logs form cypress refactor [[#9516]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9516)
* Add custom commands for selecting form elements [[#9537]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9537)
* Updated README and method-level docs for expect_alert commands [[#9538]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9538)
* Scope accordion-item search to expanded panel only [[#9531]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9531)
* Fixed toolbar to throw error on wrong option [[#9530]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9530)
* Add cypress command select accordion item [[#9522]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9522)
* Update yarn.lock with latest dependencies [[#9460]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9460)
* Added automated tests with cypress for Schedule form under Applicatio… [[#9504]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9504)
* Added automated tests with cypress for Collect-logs edit form [[#9508]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9508)
* Consolidate tests that click rows in the settings details table [[#9485]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9485)
* Separate plugin file was no longer supported as of cypress 10 [[#9486]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9486)
* Fix some report add edit delete flakiness [[#9487]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9487)
* Update minimatch to 5.1.6 [[#9488]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9488)
* Disable autofill communication [[#9461]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9461)
* Don't run with retries in cypress open mode [[#9483]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9483)
* Collapse and speed up the menu tests [[#9484]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9484)
* Bump pbkdf2 from 3.1.2 to 3.1.3 [[#9506]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9506)
* Update yarn lock node version to 20 [[#9503]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9503)
* Dead code round 3 [[#9417]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9417)
* Add cypress commands for throttling and notification stubs [[#9489]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9489)
* Experiment with cypress retries / allow failures for non-chrome browsers [[#9468]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9468)
* Update npmauditexclude list [[#9478]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9478)
* Update UI json translation files [[#9476]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9476)
* Update Yarn to v4.9.2 [[#9472]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9472)
* Upgrade cypress to 14.4 and enable it on for PRs with chrome only, for all browsers on manual, push, schedule [[#9452]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9452)
* Update yarn.lock with latest dependencies [[#9434]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9434)
* Remove incorrect and unneeded assertions [[#9458]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9458)
* Bump node and ruby versions for cypress [[#9457]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9457)
* Drop build stats since buildstats.info is dead [[#9459]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9459)
* Fix report cypress tests [[#9454]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9454)
* Fixed dashboard cypress tests [[#8892]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8892)
* Disable miq_debug for cypress for now [[#9451]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9451)
* Cypress fixes 2 - fix test text assertions to match prior code changes [[#9450]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9450)
* Removes Diagnostics > Orphaned Data tab from Application Settings [[#9442]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9442)
* Cypress fixes around timing and element existance [[#9447]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9447)
* Remove jquery from the audit exclusion list [[#9338]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9338)
* Update jquery to 3.7.1 [[#9322]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9322)
* Add tests for CatalogController#set_form_vars [[#9445]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9445)
* Drop j_str helper method [[#9437]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9437)
* Inline a singly-used helper into vm_common [[#9436]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9436)
* Add back in the details for yarn audit pending list [[#9441]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9441)
* Update yarn.lock with latest dependencies [[#9407]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9407)
* Dead code round 2 [[#9412]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9412)
* Update minimum node version to 20.19.1 [[#9405]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9405)
* Add cypress tests for reports and schedules [[#8888]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8888)
* Remove dead code [[#9411]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9411)
* Upgrade react router [[#9409]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9409)
* Update yarn.lock with latest dependencies [[#9395]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9395)
* Bump http-proxy-middleware from 2.0.7 to 2.0.9 [[#9403]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9403)
* Update Yarn to v4.9.1 [[#9402]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9402)
* Refactor key value list component [[#9306]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9306)
* Use Arel.sql to statically cast sql [[#9391]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9391)
* Update yarn.lock with latest dependencies [[#9276]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9276)
* Upgrade cypress to allow Firefox tests to proceed. [[#9380]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9380)
* Remove unused method [[#9383]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9383)
* Pin cheerio package version [[#9390]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9390)
* Update @babel/runtime-corejs2 [[#9385]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9385)
* Update @babel/runtime [[#9384]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9384)
* Bump @babel/runtime from 7.24.7 to 7.26.10 [[#9373]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9373)
* Bump @babel/runtime-corejs2 from 7.24.7 to 7.26.10 [[#9372]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9372)
* Update caniuse-lite to remove outdated warning [[#9379]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9379)
* Consolidate packages with yarn dedupe [[#9381]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9381)
* Update cypress env [[#9378]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9378)
* Update ansi-regex to 5.0.1 [[#9363]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9363)
* Update moment [[#9375]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9375)
* Update Yarn to v4.7.0 [[#9365]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9365)
* Update cross spawn [[#9364]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9364)
* Update lodash to 4.7.21 [[#9362]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9362)
* Update babel/traverse [[#9361]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9361)
* Add cachetextconv to instructions [[#9370]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9370)
* Update UI json translation files [[#9366]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9366)
* Update json differ to use gron [[#9368]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9368)
* [SPASSKY] Lockdown Ruby version to Ruby 3.3 [[#9359]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9359)
* Update dompurify to the latest [[#9351]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9351)
* Bump elliptic from 6.6.0 to 6.6.1 [[#9346]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9346)
* Update Yarn to v4.6.0 [[#9328]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9328)
* Rails 7.1 / Rails 7.0 compatible changes [[#9336]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9336)
* Exclude bootstrap-sass from yarn audit [[#9333]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9333)
* Update the npmAuditExcludePackages due to package updates [[#9329]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9329)
* Allow ui classic to run CI in act [[#9327]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9327)
* Updated bootstrap select [[#9326]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9326)
* Update patternfly [[#9315]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9315)
* Update react-codemirror2 [[#9325]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9325)
* Bump nanoid from 3.3.7 to 3.3.8 [[#9321]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9321)
* Update Yarn to v4.5.3 [[#9316]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9316)
* Update Yarn to v4.5.2 [[#9314]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9314)
* Bump cross-spawn from 6.0.5 to 6.0.6 [[#9310]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9310)
* Update UI json translation files [[#9311]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9311)
* Remove copy and paste button for automation simulation [[#9308]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9308)
* Testing with ruby 3.2, 3.3 [[#9277]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9277)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-ui-service](https://github.com/ManageIQ/manageiq-ui-service/compare/radjabov-2...spassky-1)

### Bug

* Fix services page [[#1965]](https://github.com/ManageIQ/manageiq-ui-service/pull/1965)

### Other

* Removed lodash.pick from dependencies [[#2028]](https://github.com/ManageIQ/manageiq-ui-service/pull/2028)
* Added resolution to replace `node-sass` with `sass` (dart-sass) to fix build failures [[#2027]](https://github.com/ManageIQ/manageiq-ui-service/pull/2027)
* Upgrade glob for CVE-2025-64756 [[#2020]](https://github.com/ManageIQ/manageiq-ui-service/pull/2020)
* Update yarn.lock with latest dependencies [[#1983]](https://github.com/ManageIQ/manageiq-ui-service/pull/1983)
* Update ui-components to 1.6.1 [[#2017]](https://github.com/ManageIQ/manageiq-ui-service/pull/2017)
* Read the node version from package.json in CI [[#2016]](https://github.com/ManageIQ/manageiq-ui-service/pull/2016)
* Update Yarn to v4.10.3 [[#2012]](https://github.com/ManageIQ/manageiq-ui-service/pull/2012)
* Update request [[#2015]](https://github.com/ManageIQ/manageiq-ui-service/pull/2015)
* Update actions/setup-node action to v5 [[#2013]](https://github.com/ManageIQ/manageiq-ui-service/pull/2013)
* Update UI components [[#2010]](https://github.com/ManageIQ/manageiq-ui-service/pull/2010)
* Update Yarn to v4.9.4 [[#2009]](https://github.com/ManageIQ/manageiq-ui-service/pull/2009)
* Cleanup files for cleaner merge backs [[#1985]](https://github.com/ManageIQ/manageiq-ui-service/pull/1985)
* Update actions/checkout action to v5 [[#1991]](https://github.com/ManageIQ/manageiq-ui-service/pull/1991)
* Update Yarn to v4.9.3 [[#1990]](https://github.com/ManageIQ/manageiq-ui-service/pull/1990)
* Drop the .nvmrc which is breaking the scanners [[#1992]](https://github.com/ManageIQ/manageiq-ui-service/pull/1992)
* Configure Renovate [[#1851]](https://github.com/ManageIQ/manageiq-ui-service/pull/1851)
* Bump tmp from 0.2.3 to 0.2.4 [[#1984]](https://github.com/ManageIQ/manageiq-ui-service/pull/1984)
* Update yarn.lock with latest dependencies [[#1974]](https://github.com/ManageIQ/manageiq-ui-service/pull/1974)
* Update brace expansion [[#1981]](https://github.com/ManageIQ/manageiq-ui-service/pull/1981)
* Update Yarn to v4.9.2 [[#1977]](https://github.com/ManageIQ/manageiq-ui-service/pull/1977)
* Centralize the update yarn.lock workflow to the .github repo [[#1969]](https://github.com/ManageIQ/manageiq-ui-service/pull/1969)
* Drop build stats since buildstats.info is dead [[#1975]](https://github.com/ManageIQ/manageiq-ui-service/pull/1975)
* Update yarn.lock with latest dependencies [[#1967]](https://github.com/ManageIQ/manageiq-ui-service/pull/1967)
* Add back in the details for yarn audit pending list [[#1973]](https://github.com/ManageIQ/manageiq-ui-service/pull/1973)
* Update minimum node version to 20.19.1 [[#1970]](https://github.com/ManageIQ/manageiq-ui-service/pull/1970)
* Update Yarn to v4.9.1 [[#1968]](https://github.com/ManageIQ/manageiq-ui-service/pull/1968)
* Update yarn.lock with latest dependencies [[#1966]](https://github.com/ManageIQ/manageiq-ui-service/pull/1966)
* Bump path-to-regexp from 0.1.11 to 0.1.12 [[#1942]](https://github.com/ManageIQ/manageiq-ui-service/pull/1942)
* Drop axios [[#1964]](https://github.com/ManageIQ/manageiq-ui-service/pull/1964)
* Bump axios from 1.7.7 to 1.8.2 [[#1962]](https://github.com/ManageIQ/manageiq-ui-service/pull/1962)
* Update yarn.lock with latest dependencies [[#1963]](https://github.com/ManageIQ/manageiq-ui-service/pull/1963)
* Update yarn.lock with latest dependencies [[#1932]](https://github.com/ManageIQ/manageiq-ui-service/pull/1932)
* Update Yarn to v4.7.0 [[#1961]](https://github.com/ManageIQ/manageiq-ui-service/pull/1961)
* Exclude bootstrap-sass from yarn audit [[#1960]](https://github.com/ManageIQ/manageiq-ui-service/pull/1960)
* Update the npmAuditExcludePackages due to package updates [[#1947]](https://github.com/ManageIQ/manageiq-ui-service/pull/1947)
* Update Yarn to v4.6.0 [[#1946]](https://github.com/ManageIQ/manageiq-ui-service/pull/1946)
* Bump nanoid from 3.3.7 to 3.3.8 [[#1943]](https://github.com/ManageIQ/manageiq-ui-service/pull/1943)
* Update postcss [[#1945]](https://github.com/ManageIQ/manageiq-ui-service/pull/1945)
* Update Yarn to v4.5.3 [[#1941]](https://github.com/ManageIQ/manageiq-ui-service/pull/1941)
* Update Yarn to v4.5.2 [[#1940]](https://github.com/ManageIQ/manageiq-ui-service/pull/1940)
* Update jquery to 3.7.1 [[#1939]](https://github.com/ManageIQ/manageiq-ui-service/pull/1939)
* Update patternfly [[#1938]](https://github.com/ManageIQ/manageiq-ui-service/pull/1938)
* Update postcss [[#1937]](https://github.com/ManageIQ/manageiq-ui-service/pull/1937)
* Update bootstrap-select [[#1936]](https://github.com/ManageIQ/manageiq-ui-service/pull/1936)
* Update node-sass [[#1935]](https://github.com/ManageIQ/manageiq-ui-service/pull/1935)
* Update cross-spawn to 7.0.6 [[#1934]](https://github.com/ManageIQ/manageiq-ui-service/pull/1934)
