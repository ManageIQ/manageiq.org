---
layout: page
title: Changelog from Petrosian-1 to Quinteros-1
---

## <i class="fa fa-github"></i> [ManageIQ/manageiq](https://github.com/ManageIQ/manageiq/compare/petrosian-1...quinteros-1)

### Bug

* [QUINTEROS] Fix codename [[#22897]](https://github.com/ManageIQ/manageiq/pull/22897)
* Fix DRB dequeue_method spec [[#22875]](https://github.com/ManageIQ/manageiq/pull/22875)
* Fix dashboard missing chart [[#22872]](https://github.com/ManageIQ/manageiq/pull/22872)
* Psych 4 won't allow unpermitted classes by default [[#22861]](https://github.com/ManageIQ/manageiq/pull/22861)
* Add zone_id to provider generator validationDependencies [[#22846]](https://github.com/ManageIQ/manageiq/pull/22846)
* Separate vm store and datastore smartstate scan supports checks [[#22738]](https://github.com/ManageIQ/manageiq/pull/22738)
* Use "traditional chinese" for human locale name, not Mandarin [[#22792]](https://github.com/ManageIQ/manageiq/pull/22792)
* Update translations based on #22777 #22783 11/8/23 [[#22788]](https://github.com/ManageIQ/manageiq/pull/22788)
* Add my_settings_view product feature for the My Settings page [[#22779]](https://github.com/ManageIQ/manageiq/pull/22779)
* Add missing widget dashboard yaml strings to locale task config [[#22777]](https://github.com/ManageIQ/manageiq/pull/22777)
* Change messaging-health-check to manageiq.liveness-check  [[#22775]](https://github.com/ManageIQ/manageiq/pull/22775)
* Autosave the EMS's provider to allow delegates [[#20318]](https://github.com/ManageIQ/manageiq/pull/20318)
* Fix ci.yaml syntax error [[#22765]](https://github.com/ManageIQ/manageiq/pull/22765)
* Fix locale update all from GitHub actions [[#22763]](https://github.com/ManageIQ/manageiq/pull/22763)
* Use forked fog-google for pagination fixes [[#22756]](https://github.com/ManageIQ/manageiq/pull/22756)
* pg_log changed to log in postgres 10 as default log directory [[#22747]](https://github.com/ManageIQ/manageiq/pull/22747)
* Multiple users being created for the same AD account [[#21919]](https://github.com/ManageIQ/manageiq/pull/21919)
* Only queue Job.check_for_evm_snapshots on zones with an active smartstate role [[#22742]](https://github.com/ManageIQ/manageiq/pull/22742)
* Fixed physical storage table missing translation [[#22737]](https://github.com/ManageIQ/manageiq/pull/22737)
* Add dequeue method check to add_queue [[#22728]](https://github.com/ManageIQ/manageiq/pull/22728)
* Messaging SASL mechanism updates [[#22692]](https://github.com/ManageIQ/manageiq/pull/22692)
* Fix MiqRequestTask#options configuration_script_id [[#22722]](https://github.com/ManageIQ/manageiq/pull/22722)
* Drop dependent destroy [[#22669]](https://github.com/ManageIQ/manageiq/pull/22669)
* Add manageiq user to allowed_uids for sssd [[#22715]](https://github.com/ManageIQ/manageiq/pull/22715)
* Add validation for configuration script payload credentials [[#22690]](https://github.com/ManageIQ/manageiq/pull/22690)
* Drop dependent => destroy on through associations [[#22694]](https://github.com/ManageIQ/manageiq/pull/22694)
* Add APPLICATION_DOMAIN to pod environment [[#22697]](https://github.com/ManageIQ/manageiq/pull/22697)
* Fix api_system_auth_token missing MiqServer [[#22664]](https://github.com/ManageIQ/manageiq/pull/22664)
* Skip processing of duplicate events [[#22689]](https://github.com/ManageIQ/manageiq/pull/22689)
* Let bundler do the require [[#22682]](https://github.com/ManageIQ/manageiq/pull/22682)
* Fix MiqRegion#remote_*_url returning invalid URL on podified [[#22668]](https://github.com/ManageIQ/manageiq/pull/22668)
* Ensure provider destroy requeue has long timeout [[#22660]](https://github.com/ManageIQ/manageiq/pull/22660)
* Prevent more than 1 event_handler from running [[#22655]](https://github.com/ManageIQ/manageiq/pull/22655)
* fix GuestDevice#child_device references [[#22670]](https://github.com/ManageIQ/manageiq/pull/22670)
* Disallow timecop 0.9.7 due to buggy release [[#22659]](https://github.com/ManageIQ/manageiq/pull/22659)
* Add workflow_dispatch to generator ci.yaml [[#22653]](https://github.com/ManageIQ/manageiq/pull/22653)
* Keep archived out of VimPerformanceState [[#22585]](https://github.com/ManageIQ/manageiq/pull/22585)
* Change Perf capture timer to medium priority [[#22652]](https://github.com/ManageIQ/manageiq/pull/22652)
* Shorten the query for pre-loading VimPerformanceStates [[#22648]](https://github.com/ManageIQ/manageiq/pull/22648)
* Fix Workflows Service Entrypoint arguments [[#22639]](https://github.com/ManageIQ/manageiq/pull/22639)
* Fix undefined method reject! in allowed_storages [[#22636]](https://github.com/ManageIQ/manageiq/pull/22636)
* Upgrade i18n version [[#22550]](https://github.com/ManageIQ/manageiq/pull/22550)
* Filter storages in the database rather than in ruby. [[#22625]](https://github.com/ManageIQ/manageiq/pull/22625)
* Fix migrations being run from a plugin [[#22626]](https://github.com/ManageIQ/manageiq/pull/22626)
* Precache rollup values [[#22604]](https://github.com/ManageIQ/manageiq/pull/22604)
* MiqUserRole restriction_type method fixup (Separate role access restrictions for catalog items) [[#22613]](https://github.com/ManageIQ/manageiq/pull/22613)
* Fix workflows operations queued on embedded_ansible [[#22614]](https://github.com/ManageIQ/manageiq/pull/22614)
* Fix Authentication.build_credential_types [[#22598]](https://github.com/ManageIQ/manageiq/pull/22598)
* Fix EmbeddedAnsible ScmCredential parent class [[#22577]](https://github.com/ManageIQ/manageiq/pull/22577)
* Add missing tooltips for Group button [[#22572]](https://github.com/ManageIQ/manageiq/pull/22572)
* Don't instantiate queue records on deleting a zone  - Fix UI deletion of zone with many rows growing memory beyond limits [[#22569]](https://github.com/ManageIQ/manageiq/pull/22569)
* Quiesce before raising 'stop' event and ignore any exceptions [[#22566]](https://github.com/ManageIQ/manageiq/pull/22566)
* Fix normal priority reports not being run in reporting workers [[#22563]](https://github.com/ManageIQ/manageiq/pull/22563)
* fix test by giving metrics endpoint to metrics capture ems [[#22567]](https://github.com/ManageIQ/manageiq/pull/22567)
* Check if an EMS is enabled before `perf_capture_*` [[#22564]](https://github.com/ManageIQ/manageiq/pull/22564)
* Fix Data/X-Axis Display Issue in Performance Charts [[#22534]](https://github.com/ManageIQ/manageiq/pull/22534)
* Remove N+1 from ContainerNode [[#22559]](https://github.com/ManageIQ/manageiq/pull/22559)
* Unlock manageiq-style gem [[#22560]](https://github.com/ManageIQ/manageiq/pull/22560)
* Update some translation ICT after 0601 [[#22555]](https://github.com/ManageIQ/manageiq/pull/22555)
* Fix some deliver_to_automate method overries not accepting any args [[#22552]](https://github.com/ManageIQ/manageiq/pull/22552)
* Fix specs to be relative in time back to avoid changes in the result  [[#22541]](https://github.com/ManageIQ/manageiq/pull/22541)
* Make container class' event_stream_filters match event_where_clause for ems_events [[#22388]](https://github.com/ManageIQ/manageiq/pull/22388)
* Fix cloud provision quota memory and cpu counting [[#22517]](https://github.com/ManageIQ/manageiq/pull/22517)

### Enhancement

* Avoid tabnapping exploits for target="_blank" [[#22881]](https://github.com/ManageIQ/manageiq/pull/22881)
* Add tenancy scoping to Switches [[#22843]](https://github.com/ManageIQ/manageiq/pull/22843)
* Add New Product Feature to See Request Logs [[#22701]](https://github.com/ManageIQ/manageiq/pull/22701)
* FixAuth for ConfigurationScript#credentials [[#22824]](https://github.com/ManageIQ/manageiq/pull/22824)
* Re-revert enforce kafka changes [[#22799]](https://github.com/ManageIQ/manageiq/pull/22799)
* There can be only one autoloader: zeitwerk [[#22801]](https://github.com/ManageIQ/manageiq/pull/22801)
* Mount messaging cert if root not present [[#22773]](https://github.com/ManageIQ/manageiq/pull/22773)
* Fix dashboard accessibility issues [[#22807]](https://github.com/ManageIQ/manageiq/pull/22807)
* Seed an initial service catalog [[#22509]](https://github.com/ManageIQ/manageiq/pull/22509)
* Mark Strings in Request Details for Translation [[#22506]](https://github.com/ManageIQ/manageiq/pull/22506)
* Change ems refresh task complete messaging [[#22776]](https://github.com/ManageIQ/manageiq/pull/22776)
* Dynamically build worker_cmdline for non-rails workers [[#22236]](https://github.com/ManageIQ/manageiq/pull/22236)
* Update test for Ruby 3.1 compatibility [[#22767]](https://github.com/ManageIQ/manageiq/pull/22767)
* Add deep delete functionality [[#22674]](https://github.com/ManageIQ/manageiq/pull/22674)
* Use named arguments for psych 4 support [[#22766]](https://github.com/ManageIQ/manageiq/pull/22766)
* Add Node Affinity arch selector based on the affinity of the orchestrator [[#22757]](https://github.com/ManageIQ/manageiq/pull/22757)
* Link AuthKeyPair with an EMS [[#22735]](https://github.com/ManageIQ/manageiq/pull/22735)
* Use type when defining a deprecated attribute [[#22040]](https://github.com/ManageIQ/manageiq/pull/22040)
* Set AUTOMATION_JOB_SERVICE_ACCOUNT env var for the automation worker [[#22740]](https://github.com/ManageIQ/manageiq/pull/22740)
* Set configuration_script_id in MiqRequestTask#options [[#22714]](https://github.com/ManageIQ/manageiq/pull/22714)
* Add an AutomationWorker to orchestrate workflows/playbooks [[#22710]](https://github.com/ManageIQ/manageiq/pull/22710)
* Add new Workflow Credential Mapping Feature [[#22685]](https://github.com/ManageIQ/manageiq/pull/22685)
* Zeitwerk [[#22488]](https://github.com/ManageIQ/manageiq/pull/22488)
* introduce Chargeback group_by date-first [[#22475]](https://github.com/ManageIQ/manageiq/pull/22475)
* Update English Translations 2023-07-24T18:11:37Z [[#22621]](https://github.com/ManageIQ/manageiq/pull/22621)
* Reload UI menu when Settings.prototype changes [[#22646]](https://github.com/ManageIQ/manageiq/pull/22646)
* VimPerformanceState#vim_performance_state_for_ts optimizations [[#22611]](https://github.com/ManageIQ/manageiq/pull/22611)
* validate format for SettingsChange#key [[#22624]](https://github.com/ManageIQ/manageiq/pull/22624)
* externalizing GRAPH_MAX_COUNT to settings.yaml [[#22632]](https://github.com/ManageIQ/manageiq/pull/22632)
* Change plugin setup to more closely match core setup [[#22627]](https://github.com/ManageIQ/manageiq/pull/22627)
* Allow ConfigurationScripts to be used for ServiceTemplateProvisionTasks [[#22511]](https://github.com/ManageIQ/manageiq/pull/22511)
* Translations for 2023-07-11 English po file updated #22543 [[#22623]](https://github.com/ManageIQ/manageiq/pull/22623)
* Pre-zeitwerk - Add inflections and acronyms [[#22620]](https://github.com/ManageIQ/manageiq/pull/22620)
* Add docker and podman as known commands [[#22603]](https://github.com/ManageIQ/manageiq/pull/22603)
* Enable notifier role by default [[#22587]](https://github.com/ManageIQ/manageiq/pull/22587)
* Allow `supports?(feature)` to work without requiring `supports_not` [[#22578]](https://github.com/ManageIQ/manageiq/pull/22578)
* Added Workflow Credentials to ./spec/factories/authentication.rb [[#22612]](https://github.com/ManageIQ/manageiq/pull/22612)
* Specs for Vim Performance States [[#22607]](https://github.com/ManageIQ/manageiq/pull/22607)
* VimPerformanceState#purge_timer for old records [[#22605]](https://github.com/ManageIQ/manageiq/pull/22605)
* Added vm reload features [[#22602]](https://github.com/ManageIQ/manageiq/pull/22602)
* Separate role access restrictions for catalog items [[#22573]](https://github.com/ManageIQ/manageiq/pull/22573)
* Allow `ResourceAction#fqname=nil` to clear `ae_*` [[#22600]](https://github.com/ManageIQ/manageiq/pull/22600)
* Set associations during targeted refresh for VMs and MiqTemplate [[#22588]](https://github.com/ManageIQ/manageiq/pull/22588)
* Updated Titles in Embedded Workflow Pages [[#22586]](https://github.com/ManageIQ/manageiq/pull/22586)
* Create workflow factories [[#22584]](https://github.com/ManageIQ/manageiq/pull/22584)
* Add a default params_to_attributes for EmbeddedAutomationManager Authentications [[#22570]](https://github.com/ManageIQ/manageiq/pull/22570)
* Add real execution specs for ansible-runner [[#22522]](https://github.com/ManageIQ/manageiq/pull/22522)
* Use namespaced gem require instead of hyphenated name [[#22548]](https://github.com/ManageIQ/manageiq/pull/22548)
* Move ScmCredential up from EmbeddedAnsible to EmbeddedAutomationManager [[#22549]](https://github.com/ManageIQ/manageiq/pull/22549)
* Use AS::Dependencies interlock with classic autoloader [[#22539]](https://github.com/ManageIQ/manageiq/pull/22539)
* Pass zone to workflow run from ResourceAction [[#22546]](https://github.com/ManageIQ/manageiq/pull/22546)
* Move MiqRequestTask entrypoint to `#deliver_queue` [[#22544]](https://github.com/ManageIQ/manageiq/pull/22544)
* Add arm64-darwin to generate_lockfile [[#22536]](https://github.com/ManageIQ/manageiq/pull/22536)
* Adding relative date formatting option for report generation [[#22426]](https://github.com/ManageIQ/manageiq/pull/22426)
* MiqExpression::Target.parse returns null object to simplify callers [[#22519]](https://github.com/ManageIQ/manageiq/pull/22519)

### Other

* [QUINTEROS] Bump appliance_console to 8.1 in Gemfile.lock.release [[#22890]](https://github.com/ManageIQ/manageiq/pull/22890)
* Bump appliance_console minimum to 8.1.0 [[#22889]](https://github.com/ManageIQ/manageiq/pull/22889)
* [QUINTEROS] Bump nokogiri to 1.16.2 [[#22880]](https://github.com/ManageIQ/manageiq/pull/22880)
* Clear messaging_client between specs [[#22876]](https://github.com/ManageIQ/manageiq/pull/22876)
* [QUINTEROS] Bump floe to v0.7.1 in lockfile [[#22868]](https://github.com/ManageIQ/manageiq/pull/22868)
* BinaryBlob was changed in #22861 do this check, so use it [[#22866]](https://github.com/ManageIQ/manageiq/pull/22866)
* Bump puma to address CVE-2024-21647 [[#22840]](https://github.com/ManageIQ/manageiq/pull/22840)
* Updated translations based on English changes from core 22789 [[#22834]](https://github.com/ManageIQ/manageiq/pull/22834)
* [QUINTEROS] Bump lockfile after backport of #22799 [[#22826]](https://github.com/ManageIQ/manageiq/pull/22826)
* Update English Translations 2023-12-26T17:22:29Z [[#22789]](https://github.com/ManageIQ/manageiq/pull/22789)
* [QUINTEROS] Bump lockfile for quinteros branch [[#22825]](https://github.com/ManageIQ/manageiq/pull/22825)
* Bump manageiq-messaging to 1.4.1 [[#22822]](https://github.com/ManageIQ/manageiq/pull/22822)
* [QUINTEROS] Bump Gemfile.lock.release after backport of #22814 [[#22823]](https://github.com/ManageIQ/manageiq/pull/22823)
* Bump manageiq-loggers to v1.1.1 [[#22814]](https://github.com/ManageIQ/manageiq/pull/22814)
* Run apt-get update before install in bin/before_install [[#22809]](https://github.com/ManageIQ/manageiq/pull/22809)
* Drop fog-google from manageiq.rubygems.org [[#22800]](https://github.com/ManageIQ/manageiq/pull/22800)
* Remove default views feature [[#22797]](https://github.com/ManageIQ/manageiq/pull/22797)
* Update yarn to stable v4.0.2 [[#22791]](https://github.com/ManageIQ/manageiq/pull/22791)
* Update English Translations 2023-11-08T18:59:09Z [[#22783]](https://github.com/ManageIQ/manageiq/pull/22783)
* rbac simplify rbac_base_class [[#22784]](https://github.com/ManageIQ/manageiq/pull/22784)
* Add awesome_spawn gem directly [[#22782]](https://github.com/ManageIQ/manageiq/pull/22782)
* Update translations from 10/26 English catalog [[#22781]](https://github.com/ManageIQ/manageiq/pull/22781)
* Fix Build: handle awesome spawn update [[#22772]](https://github.com/ManageIQ/manageiq/pull/22772)
* Remove unnecessary supports_not [[#22751]](https://github.com/ManageIQ/manageiq/pull/22751)
* Change the ci.yaml to be more consistent with YAML.load/dump [[#22769]](https://github.com/ManageIQ/manageiq/pull/22769)
* Update English Translations 2023-10-26T20:23:23Z [[#22770]](https://github.com/ManageIQ/manageiq/pull/22770)
* Drop Ruby 2.7 support [[#22768]](https://github.com/ManageIQ/manageiq/pull/22768)
* [QUINTEROS] Update lockfile after merge of #22761 [[#22764]](https://github.com/ManageIQ/manageiq/pull/22764)
* upgrade gems for ruby 3.0.x security issues [[#22761]](https://github.com/ManageIQ/manageiq/pull/22761)
* Rebuild Gemfile.lock.release after merge of master into quinteros [[#22760]](https://github.com/ManageIQ/manageiq/pull/22760)
* fix specs for Virtual attributes update [[#22758]](https://github.com/ManageIQ/manageiq/pull/22758)
* Change URL for the OpenSSF Best Practices badge to the current one [[#22755]](https://github.com/ManageIQ/manageiq/pull/22755)
* Drop tools/miqssh [[#22501]](https://github.com/ManageIQ/manageiq/pull/22501)
* Lock down psych to pre-4.0.0 versions [[#22727]](https://github.com/ManageIQ/manageiq/pull/22727)
* Change plugin generator to create zeitwerk compliant files [[#22725]](https://github.com/ManageIQ/manageiq/pull/22725)
* [QUINTEROS] Bump manageiq-messaging to 1.4.0 [[#22724]](https://github.com/ManageIQ/manageiq/pull/22724)
* Add shared examples for EMS#pause! and #resume! [[#22716]](https://github.com/ManageIQ/manageiq/pull/22716)
* [test] For Rbac tests, use User.with_user over setting the current_user [[#22712]](https://github.com/ManageIQ/manageiq/pull/22712)
* comment that default tenant access strategy of nil means tenant only [[#22711]](https://github.com/ManageIQ/manageiq/pull/22711)
* [QUINTEROS] Bump fog-openstack, rbvmomi2, and floe in Gemfile.lock.release [[#22717]](https://github.com/ManageIQ/manageiq/pull/22717)
* Upgrade to yarn 4.0.0-rc.51 for the plugin generator [[#22707]](https://github.com/ManageIQ/manageiq/pull/22707)
* [QUINTEROS] Bump Rails to 6.1.7.6 for CVEs [[#22709]](https://github.com/ManageIQ/manageiq/pull/22709)
* Add purging of ems's relationships in async batches [[#22691]](https://github.com/ManageIQ/manageiq/pull/22691)
* Update actions/checkout version to v4 [[#22705]](https://github.com/ManageIQ/manageiq/pull/22705)
* Ruby 3.1 - net/ftp was moved out of standard library to a gem in ruby 3.1 [[#22702]](https://github.com/ManageIQ/manageiq/pull/22702)
* Drop Ems destroy callback [[#22695]](https://github.com/ManageIQ/manageiq/pull/22695)
* Delete the container_manager reconnect_block [[#22688]](https://github.com/ManageIQ/manageiq/pull/22688)
* Add missing benchmark around rollup to parents [[#22687]](https://github.com/ManageIQ/manageiq/pull/22687)
* Fix CI 'if' ruby-version check for 3.0 [[#22679]](https://github.com/ManageIQ/manageiq/pull/22679)
* [QUINTEROS]  Lock the release branch to test with ruby 3.0 / Fixup CI 'if' ruby-version check for 3.0 [[#22677]](https://github.com/ManageIQ/manageiq/pull/22677)
* Upgrade puma to 6.x [[#22672]](https://github.com/ManageIQ/manageiq/pull/22672)
* [QUINTEROS] Quinteros lock timecop 0.9.8 after #22659 [[#22676]](https://github.com/ManageIQ/manageiq/pull/22676)
* Translations for 2023-07-24 English po file updated (#22621) [[#22654]](https://github.com/ManageIQ/manageiq/pull/22654)
* Metric::Rollup - simplify column declarations [[#22608]](https://github.com/ManageIQ/manageiq/pull/22608)
* Use Arel helper methods to generate arel [[#22581]](https://github.com/ManageIQ/manageiq/pull/22581)
* Add Switch#ext_management_system [[#22645]](https://github.com/ManageIQ/manageiq/pull/22645)
* Vim performance state time interval [[#22606]](https://github.com/ManageIQ/manageiq/pull/22606)
* VimPerformanceState do not bring back archived records [[#22589]](https://github.com/ManageIQ/manageiq/pull/22589)
* Add import specs [[#22637]](https://github.com/ManageIQ/manageiq/pull/22637)
* Add methods for env vars in ManageIQ::Environment [[#22628]](https://github.com/ManageIQ/manageiq/pull/22628)
* Update GitHub Actions versions [[#22635]](https://github.com/ManageIQ/manageiq/pull/22635)
* add miqExpression::Target equality [[#22615]](https://github.com/ManageIQ/manageiq/pull/22615)
* Remove ContainerGroup#old_container_project_id [[#22610]](https://github.com/ManageIQ/manageiq/pull/22610)
* Precache rollup values [[#22594]](https://github.com/ManageIQ/manageiq/pull/22594)
* Remove User#unlock_queue use of put_or_update [[#22592]](https://github.com/ManageIQ/manageiq/pull/22592)
* Bump appliance_console for IPA/certmonger principal name fix [[#22595]](https://github.com/ManageIQ/manageiq/pull/22595)
* Upgrade Rails to 6.1.7.4 for CVE-2023-28362 [[#22590]](https://github.com/ManageIQ/manageiq/pull/22590)
* Only load performance states for the records of interest  [[#22579]](https://github.com/ManageIQ/manageiq/pull/22579)
* remove extra vim_performance_state finders [[#22580]](https://github.com/ManageIQ/manageiq/pull/22580)
* allow container nodes to be created with hardware [[#22565]](https://github.com/ManageIQ/manageiq/pull/22565)
* Simulate queue order [[#22561]](https://github.com/ManageIQ/manageiq/pull/22561)
* peg i18n gem to 1.13 [[#22545]](https://github.com/ManageIQ/manageiq/pull/22545)
* add protected dialog_field factory [[#22530]](https://github.com/ManageIQ/manageiq/pull/22530)
* Perf capture minor changes for testing [[#22287]](https://github.com/ManageIQ/manageiq/pull/22287)
* Set init.defaultBranch for specs [[#22551]](https://github.com/ManageIQ/manageiq/pull/22551)
* Remove if AUTOMATE_DRIVES from service_template_provision_task [[#22540]](https://github.com/ManageIQ/manageiq/pull/22540)

---

## <i class="fa fa-github"></i> [ManageIQ/amazon_ssa_support](https://github.com/ManageIQ/compare/petrosian-1...quinteros-1/amazon_ssa_support)

### Bug

* Fix name error loading gem-pending files without the zeitwerk loader [[#106]](https://github.com/ManageIQ/amazon_ssa_support/pull/106)

### Enhancement

* Use namespaced gem require instead of hyphenated name [[#96]](https://github.com/ManageIQ/amazon_ssa_support/pull/96)

### Other

* Drop Ruby 2.7 [[#105]](https://github.com/ManageIQ/amazon_ssa_support/pull/105)
* Update actions/checkout version to v4 [[#104]](https://github.com/ManageIQ/amazon_ssa_support/pull/104)
* Fix CI 'if' ruby-version check for 3.0 [[#103]](https://github.com/ManageIQ/amazon_ssa_support/pull/103)
* [QUINTEROS] Fixup CI 'if' ruby-version check for 3.0 [[#102]](https://github.com/ManageIQ/amazon_ssa_support/pull/102)
* [QUINTEROS] Lock the release branch to test with ruby 3.0 [[#100]](https://github.com/ManageIQ/amazon_ssa_support/pull/100)
* Update GitHub Actions versions [[#98]](https://github.com/ManageIQ/amazon_ssa_support/pull/98)
* Allow workflow_dispatch GHA event [[#97]](https://github.com/ManageIQ/amazon_ssa_support/pull/97)

---

## <i class="fa fa-github"></i> [ManageIQ/manageiq-api](https://github.com/ManageIQ/manageiq-api/compare/petrosian-1...quinteros-1)

### Bug

* Add stub_supports/supports_not for VM Scan specs [[#1245]](https://github.com/ManageIQ/manageiq-api/pull/1245)
* Allow the user to list and see themselves even without rbac_user_show [[#1230]](https://github.com/ManageIQ/manageiq-api/pull/1230)
* Reject invalid script_payload credential_fields [[#1241]](https://github.com/ManageIQ/manageiq-api/pull/1241)
* Allow configuration_script_payloads#credentials to be shown [[#1239]](https://github.com/ManageIQ/manageiq-api/pull/1239)

### Enhancement

* loading is not needed with zeitwerk autoloader [[#1243]](https://github.com/ManageIQ/manageiq-api/pull/1243)
* Add support for edit configuration_script_payloads [[#1231]](https://github.com/ManageIQ/manageiq-api/pull/1231)

### Other

* Drop Ruby 2.7 [[#1242]](https://github.com/ManageIQ/manageiq-api/pull/1242)
* Drop lifecycle_event model [[#1232]](https://github.com/ManageIQ/manageiq-api/pull/1232)
* Filter uses a regular expression [[#1233]](https://github.com/ManageIQ/manageiq-api/pull/1233)
* Update actions/checkout version to v4 [[#1240]](https://github.com/ManageIQ/manageiq-api/pull/1240)
* Fix CI 'if' ruby-version check for 3.0 [[#1237]](https://github.com/ManageIQ/manageiq-api/pull/1237)
* [QUINTEROS] Lock the release branch to test with ruby 3.0 / Fixup CI 'if' ruby-version check for 3.0 [[#1236]](https://github.com/ManageIQ/manageiq-api/pull/1236)
* Update GitHub Actions versions [[#1234]](https://github.com/ManageIQ/manageiq-api/pull/1234)
* add test to document how to pass parameters into service template orders [[#1225]](https://github.com/ManageIQ/manageiq-api/pull/1225)

---

## <i class="fa fa-github"></i> [ManageIQ/manageiq-appliance](https://github.com/ManageIQ/compare/petrosian-1...quinteros-1/manageiq-appliance)

### Bug

* pg_log changed to log in postgres 10 as default log directory [[#377]](https://github.com/ManageIQ/manageiq-appliance/pull/377)

### Enhancement

* Initialize Kafka topics [[#378]](https://github.com/ManageIQ/manageiq-appliance/pull/378)
* Disable old SSL Protocols < TLSv1.2 [[#305]](https://github.com/ManageIQ/manageiq-appliance/pull/305)

### Other

* dropping miq_ldap [[#374]](https://github.com/ManageIQ/manageiq-appliance/pull/374)

---

## <i class="fa fa-github"></i> [ManageIQ/manageiq-appliance-build](https://github.com/ManageIQ/compare/petrosian-1...quinteros-1/manageiq-appliance-build)

### Bug

* [quinteros] Revert "Changes after new branch quinteros" [[#567]](https://github.com/ManageIQ/manageiq-appliance-build/pull/567)
* Fully qualify the docker image [[#555]](https://github.com/ManageIQ/manageiq-appliance-build/pull/555)
* Fix issue when newer json gem is not present [[#552]](https://github.com/ManageIQ/manageiq-appliance-build/pull/552)

### Enhancement

* Schedule a weekly appliance build on Sundays [[#554]](https://github.com/ManageIQ/manageiq-appliance-build/pull/554)
* Split appliance build jobs and run in parallel [[#551]](https://github.com/ManageIQ/manageiq-appliance-build/pull/551)

### Other

* Drop Ruby 2.7 [[#558]](https://github.com/ManageIQ/manageiq-appliance-build/pull/558)
* Update actions/checkout version to v4 [[#557]](https://github.com/ManageIQ/manageiq-appliance-build/pull/557)
* [QUINTEROS] Lock the release branch to test with ruby 3.0 [[#556]](https://github.com/ManageIQ/manageiq-appliance-build/pull/556)
* Allow workflow_dispatch GHA event [[#550]](https://github.com/ManageIQ/manageiq-appliance-build/pull/550)

---

## <i class="fa fa-github"></i> [ManageIQ/manageiq-automation_engine](https://github.com/ManageIQ/compare/petrosian-1...quinteros-1/manageiq-automation_engine)

### Bug

* Use load when loading static service models [[#536]](https://github.com/ManageIQ/manageiq-automation_engine/pull/536)

### Enhancement

* permit_concurrent_loads is not needed with zeitwerk autoloader [[#537]](https://github.com/ManageIQ/manageiq-automation_engine/pull/537)
* Psych4 support [[#535]](https://github.com/ManageIQ/manageiq-automation_engine/pull/535)

### Other

* Drop Ruby 2.7 [[#534]](https://github.com/ManageIQ/manageiq-automation_engine/pull/534)
* Update actions/checkout version to v4 [[#533]](https://github.com/ManageIQ/manageiq-automation_engine/pull/533)
* Fix CI 'if' ruby-version check for 3.0 [[#531]](https://github.com/ManageIQ/manageiq-automation_engine/pull/531)
* [QUINTEROS] Lock the release branch to test with ruby 3.0 / Fixup CI 'if' ruby-version check for 3.0 [[#530]](https://github.com/ManageIQ/manageiq-automation_engine/pull/530)
* Update GitHub Actions versions [[#528]](https://github.com/ManageIQ/manageiq-automation_engine/pull/528)

---

## <i class="fa fa-github"></i> [ManageIQ/manageiq-consumption](https://github.com/ManageIQ/compare/petrosian-1...quinteros-1/manageiq-consumption)

### Other

* Drop Ruby 2.7 [[#212]](https://github.com/ManageIQ/manageiq-consumption/pull/212)
* Update actions/checkout version to v4 [[#211]](https://github.com/ManageIQ/manageiq-consumption/pull/211)
* Fix CI 'if' ruby-version check for 3.0 [[#210]](https://github.com/ManageIQ/manageiq-consumption/pull/210)
* [QUINTEROS] Fixup CI 'if' ruby-version check for 3.0 [[#209]](https://github.com/ManageIQ/manageiq-consumption/pull/209)
* [QUINTEROS] Lock the release branch to test with ruby 3.0 [[#208]](https://github.com/ManageIQ/manageiq-consumption/pull/208)
* Update GitHub Actions versions [[#207]](https://github.com/ManageIQ/manageiq-consumption/pull/207)

---

## <i class="fa fa-github"></i> [ManageIQ/manageiq-content](https://github.com/ManageIQ/manageiq-content/compare/petrosian-1...quinteros-1)

### Other

* Drop Ruby 2.7 [[#739]](https://github.com/ManageIQ/manageiq-content/pull/739)
* Update actions/checkout version to v4 [[#738]](https://github.com/ManageIQ/manageiq-content/pull/738)
* Fix CI 'if' ruby-version check for 3.0 [[#736]](https://github.com/ManageIQ/manageiq-content/pull/736)
* [QUINTEROS] Fixup CI 'if' ruby-version check for 3.0 [[#735]](https://github.com/ManageIQ/manageiq-content/pull/735)
* [QUINTEROS] Lock the release branch to test with ruby 3.0 [[#734]](https://github.com/ManageIQ/manageiq-content/pull/734)
* Update GitHub Actions versions [[#733]](https://github.com/ManageIQ/manageiq-content/pull/733)

---

## <i class="fa fa-github"></i> [ManageIQ/manageiq-decorators](https://github.com/ManageIQ/compare/petrosian-1...quinteros-1/manageiq-decorators)

### Enhancement

* Add icon for workflows [[#96]](https://github.com/ManageIQ/manageiq-decorators/pull/96)

### Other

* Drop Ruby 2.7 [[#97]](https://github.com/ManageIQ/manageiq-decorators/pull/97)
* Update actions/checkout version to v4 [[#95]](https://github.com/ManageIQ/manageiq-decorators/pull/95)
* Fix CI 'if' ruby-version check for 3.0 [[#94]](https://github.com/ManageIQ/manageiq-decorators/pull/94)
* [QUINTEROS] Fixup CI 'if' ruby-version check for 3.0 [[#93]](https://github.com/ManageIQ/manageiq-decorators/pull/93)
* [QUINTEROS] Lock the release branch to test with ruby 3.0 [[#92]](https://github.com/ManageIQ/manageiq-decorators/pull/92)
* Update GitHub Actions versions [[#91]](https://github.com/ManageIQ/manageiq-decorators/pull/91)

---

## <i class="fa fa-github"></i> [ManageIQ/manageiq-documentation](https://github.com/ManageIQ/compare/petrosian-1...quinteros-1/manageiq-documentation)

### Bug

* screengrabs diff location btw MIQ & IBM Docs embedded_workflows.md [[#1768]](https://github.com/ManageIQ/manageiq-documentation/pull/1768)
* Fix capabilities matrix [[#1765]](https://github.com/ManageIQ/manageiq-documentation/pull/1765)
* Add CIC to provider section of capabilities matrix [[#1764]](https://github.com/ManageIQ/manageiq-documentation/pull/1764)
* Add procedure to specify docker pull secret for embedded workflow [[#1760]](https://github.com/ManageIQ/manageiq-documentation/pull/1760)
* Fix appliance backup and restore numbered lists [[#1758]](https://github.com/ManageIQ/manageiq-documentation/pull/1758)
* pg_log changed to log in postgres 10 as default log directory [[#1754]](https://github.com/ManageIQ/manageiq-documentation/pull/1754)
* Fix remote-console cert keys [[#1747]](https://github.com/ManageIQ/manageiq-documentation/pull/1747)
* Add manageiq user as allowed uid to the sssd.conf documentation [[#1743]](https://github.com/ManageIQ/manageiq-documentation/pull/1743)
* Add back the internal database configuration docs [[#1689]](https://github.com/ManageIQ/manageiq-documentation/pull/1689)
* Fix missing method v2_key [[#1734]](https://github.com/ManageIQ/manageiq-documentation/pull/1734)
* Fix navigation references to Embedded Automate [[#1732]](https://github.com/ManageIQ/manageiq-documentation/pull/1732)

### Enhancement

* Revert #1780 and specify adding hostname to /etc/hosts [[#1781]](https://github.com/ManageIQ/manageiq-documentation/pull/1781)
* Specify internal FQDN for messaging hostname [[#1780]](https://github.com/ManageIQ/manageiq-documentation/pull/1780)
* Messaging hostname guideline updates [[#1778]](https://github.com/ManageIQ/manageiq-documentation/pull/1778)
* Messaging configuration hostname guidelines [[#1777]](https://github.com/ManageIQ/manageiq-documentation/pull/1777)
* QA Update services.md to add the password paramater [[#1775]](https://github.com/ManageIQ/manageiq-documentation/pull/1775)
* Strimzi installation on Kubernetes [[#1769]](https://github.com/ManageIQ/manageiq-documentation/pull/1769)
* Volume snapshot to Instance -  not enabled on IM on Z [[#1770]](https://github.com/ManageIQ/manageiq-documentation/pull/1770)
* Create configuration_script_payloads API doc [[#1757]](https://github.com/ManageIQ/manageiq-documentation/pull/1757)
* Docker pull secrets - IM Appliance - final Edits [[#1771]](https://github.com/ManageIQ/manageiq-documentation/pull/1771)
* Embedded Workflows on OCP docker custom pull secret [[#1762]](https://github.com/ManageIQ/manageiq-documentation/pull/1762)
* Add `Q35 Chipset with BIOS` to RHV installation docs [[#1763]](https://github.com/ManageIQ/manageiq-documentation/pull/1763)
* Better indenting and bullets [[#1766]](https://github.com/ManageIQ/manageiq-documentation/pull/1766)
* Update product.yml [[#1761]](https://github.com/ManageIQ/manageiq-documentation/pull/1761)
* Update embedded_workflows.md [[#1759]](https://github.com/ManageIQ/manageiq-documentation/pull/1759)
* Consolidate VMWare VDDK docs to a central location [[#1755]](https://github.com/ManageIQ/manageiq-documentation/pull/1755)
* Update event syndication enablement content [[#1751]](https://github.com/ManageIQ/manageiq-documentation/pull/1751)
* Enable events syndication [[#1746]](https://github.com/ManageIQ/manageiq-documentation/pull/1746)
* Add documentation for scheduling database backups using crontab [[#1749]](https://github.com/ManageIQ/manageiq-documentation/pull/1749)
* Document the steps for backup and restore of appliances [[#1740]](https://github.com/ManageIQ/manageiq-documentation/pull/1740)
* Add root key to internal certificate secret example [[#1741]](https://github.com/ManageIQ/manageiq-documentation/pull/1741)
* Show support for PowerVC metrics [[#1739]](https://github.com/ManageIQ/manageiq-documentation/pull/1739)
* enabling ibm_powervc events [[#1737]](https://github.com/ManageIQ/manageiq-documentation/pull/1737)

### Other

* Add documentation on setting credentials in workflows [[#1773]](https://github.com/ManageIQ/manageiq-documentation/pull/1773)
* It is not required to stop services before backup [[#1767]](https://github.com/ManageIQ/manageiq-documentation/pull/1767)
* dropping references to vm lifecycle events [[#1736]](https://github.com/ManageIQ/manageiq-documentation/pull/1736)
* Add Embedded Workflows content [[#1752]](https://github.com/ManageIQ/manageiq-documentation/pull/1752)
* Fix menu entries [[#1756]](https://github.com/ManageIQ/manageiq-documentation/pull/1756)
* General markdown edits for provider topics [[#1753]](https://github.com/ManageIQ/manageiq-documentation/pull/1753)
* Update automation_providers.md [[#1750]](https://github.com/ManageIQ/manageiq-documentation/pull/1750)
* Remove SCVMM from Capabilities Matrix [[#1748]](https://github.com/ManageIQ/manageiq-documentation/pull/1748)
* Remove prior now that #1740 has been backported down to najdorf [[#1744]](https://github.com/ManageIQ/manageiq-documentation/pull/1744)
* Update actions/checkout version to v4 [[#1742]](https://github.com/ManageIQ/manageiq-documentation/pull/1742)
* Update GitHub Actions versions [[#1738]](https://github.com/ManageIQ/manageiq-documentation/pull/1738)
* Remove scheduling of database backups from documentation [[#1735]](https://github.com/ManageIQ/manageiq-documentation/pull/1735)

---

## <i class="fa fa-github"></i> [ManageIQ/manageiq-gems-pending](https://github.com/ManageIQ/compare/petrosian-1...quinteros-1/manageiq-gems-pending)

### Bug

* Fix stubbing of AwesomeSpawn private method results [[#568]](https://github.com/ManageIQ/manageiq-gems-pending/pull/568)

### Enhancement

*  Add zeitwerk loader and teach it about this gem [[#551]](https://github.com/ManageIQ/manageiq-gems-pending/pull/551)

### Other

* Use AwesomeSpawn's stub_good_run spec helper [[#569]](https://github.com/ManageIQ/manageiq-gems-pending/pull/569)
* Drop Ruby 2.7 [[#567]](https://github.com/ManageIQ/manageiq-gems-pending/pull/567)
* Update actions/checkout version to v4 [[#566]](https://github.com/ManageIQ/manageiq-gems-pending/pull/566)
* Ruby 3.1 - net/ftp was moved from stdlib to a gem [[#565]](https://github.com/ManageIQ/manageiq-gems-pending/pull/565)
* Fix CI 'if' ruby-version check for 3.0 [[#564]](https://github.com/ManageIQ/manageiq-gems-pending/pull/564)
* [QUINTEROS] Fixup CI 'if' ruby-version check for 3.0 [[#563]](https://github.com/ManageIQ/manageiq-gems-pending/pull/563)
* [QUINTEROS] Lock the release branch to test with ruby 3.0 [[#562]](https://github.com/ManageIQ/manageiq-gems-pending/pull/562)
* Update GitHub Actions versions [[#561]](https://github.com/ManageIQ/manageiq-gems-pending/pull/561)

---

## <i class="fa fa-github"></i> [ManageIQ/manageiq-pods](https://github.com/ManageIQ/manageiq-pods/compare/petrosian-1...quinteros-1)

### Bug

* [QUINTEROS] Fix quinteros RPM repo links [[#1082]](https://github.com/ManageIQ/manageiq-pods/pull/1082)
* Only return passwords that include letters. [[#1052]](https://github.com/ManageIQ/manageiq-pods/pull/1052)
* Error handling for FindCatalogSourceByName [[#1044]](https://github.com/ManageIQ/manageiq-pods/pull/1044)
* Revert default messaging change [[#1026]](https://github.com/ManageIQ/manageiq-pods/pull/1026)
* Fix typo pods/log [[#1001]](https://github.com/ManageIQ/manageiq-pods/pull/1001)
* Give the operator permission to give permission to pod/logs get [[#1000]](https://github.com/ManageIQ/manageiq-pods/pull/1000)
* Add permissions for pods/logs to the manageiq-automation role [[#999]](https://github.com/ManageIQ/manageiq-pods/pull/999)
* Deploy Kafka network policies only when needed [[#990]](https://github.com/ManageIQ/manageiq-pods/pull/990)
* Fix route permissions issues after #989 [[#996]](https://github.com/ManageIQ/manageiq-pods/pull/996)
* Lock down to UBI 8.8-1032 [[#987]](https://github.com/ManageIQ/manageiq-pods/pull/987)
* quinteros branching followup [[#983]](https://github.com/ManageIQ/manageiq-pods/pull/983)
* [quinteros] branching followup [[#982]](https://github.com/ManageIQ/manageiq-pods/pull/982)
* Let sysv handle dynamic shared memory type for containers [[#974]](https://github.com/ManageIQ/manageiq-pods/pull/974)
* Log to stderr by turning off the log file collector [[#968]](https://github.com/ManageIQ/manageiq-pods/pull/968)

### Enhancement

* Move orchestrator internal root cert to projected volume source [[#1030]](https://github.com/ManageIQ/manageiq-pods/pull/1030)
* Bump strimzi to 0.37 [[#1025]](https://github.com/ManageIQ/manageiq-pods/pull/1025)
* Replace Bitnami with Strimzi Kafka [[#1005]](https://github.com/ManageIQ/manageiq-pods/pull/1005)
* Deploy messaging by default [[#1024]](https://github.com/ManageIQ/manageiq-pods/pull/1024)
* Enforce and default Kafka configuration [[#896]](https://github.com/ManageIQ/manageiq-pods/pull/896)
* AddLabels util function [[#1020]](https://github.com/ManageIQ/manageiq-pods/pull/1020)
* Add or update unique volume mount [[#1008]](https://github.com/ManageIQ/manageiq-pods/pull/1008)
* Add Node affinity [[#1003]](https://github.com/ManageIQ/manageiq-pods/pull/1003)
* Add RBAC for the automation worker [[#995]](https://github.com/ManageIQ/manageiq-pods/pull/995)
* Operator sdk v1.30 upgrade [[#966]](https://github.com/ManageIQ/manageiq-pods/pull/966)
* Added ManageIQ Status with conditions, versions and ingress endpoint info [[#973]](https://github.com/ManageIQ/manageiq-pods/pull/973)

### Other

* Update to go v1.22 [[#1054]](https://github.com/ManageIQ/manageiq-pods/pull/1054)
* Update github.com/openshift/api digest to 7162acc [[#1037]](https://github.com/ManageIQ/manageiq-pods/pull/1037)
* Update go dependencies [[#1049]](https://github.com/ManageIQ/manageiq-pods/pull/1049)
* Update go dependencies [[#1042]](https://github.com/ManageIQ/manageiq-pods/pull/1042)
* Update github.com/openshift/api digest to 2054c69 [[#1012]](https://github.com/ManageIQ/manageiq-pods/pull/1012)
* Update go dependencies [[#1036]](https://github.com/ManageIQ/manageiq-pods/pull/1036)
* Update go dependencies [[#1032]](https://github.com/ManageIQ/manageiq-pods/pull/1032)
* Upgrade to operator-sdk v1.33 [[#1027]](https://github.com/ManageIQ/manageiq-pods/pull/1027)
* Update actions/setup-go action to v5 [[#1021]](https://github.com/ManageIQ/manageiq-pods/pull/1021)
* Update go dependencies [[#1018]](https://github.com/ManageIQ/manageiq-pods/pull/1018)
* Update go dependencies [[#1017]](https://github.com/ManageIQ/manageiq-pods/pull/1017)
* Update go dependencies [[#1015]](https://github.com/ManageIQ/manageiq-pods/pull/1015)
* Configure Renovate [[#967]](https://github.com/ManageIQ/manageiq-pods/pull/967)
* Update go dependencies [[#1011]](https://github.com/ManageIQ/manageiq-pods/pull/1011)
* Update go dependencies [[#1009]](https://github.com/ManageIQ/manageiq-pods/pull/1009)
* Update go dependencies [[#1006]](https://github.com/ManageIQ/manageiq-pods/pull/1006)
* Drop Ruby 2.7 [[#1007]](https://github.com/ManageIQ/manageiq-pods/pull/1007)
* Update go dependencies [[#1004]](https://github.com/ManageIQ/manageiq-pods/pull/1004)
* Update go dependencies [[#1002]](https://github.com/ManageIQ/manageiq-pods/pull/1002)
* Update go dependencies [[#998]](https://github.com/ManageIQ/manageiq-pods/pull/998)
* Update go dependencies [[#997]](https://github.com/ManageIQ/manageiq-pods/pull/997)
* Group dependencies together for simplicity [[#989]](https://github.com/ManageIQ/manageiq-pods/pull/989)
* go get -t -u ./... && go mod tidy [[#994]](https://github.com/ManageIQ/manageiq-pods/pull/994)
* Revert "Lock down to UBI 8.8-1032" [[#992]](https://github.com/ManageIQ/manageiq-pods/pull/992)
* Update actions/checkout version to v4 [[#991]](https://github.com/ManageIQ/manageiq-pods/pull/991)
* Upgrade to go v1.21.0 to resolve multiple CVEs [[#984]](https://github.com/ManageIQ/manageiq-pods/pull/984)
* [QUINTEROS] Lock the release branch to test with ruby 3.0 [[#985]](https://github.com/ManageIQ/manageiq-pods/pull/985)
* Removing perl* exclude as there are no longer conflicts [[#981]](https://github.com/ManageIQ/manageiq-pods/pull/981)
* Update actions [[#980]](https://github.com/ManageIQ/manageiq-pods/pull/980)
* Add a test to ensure that go versions are all the same [[#975]](https://github.com/ManageIQ/manageiq-pods/pull/975)
* Mark deprecated spec properties. [[#971]](https://github.com/ManageIQ/manageiq-pods/pull/971)
* Allow workflow_dispatch GHA event [[#970]](https://github.com/ManageIQ/manageiq-pods/pull/970)

---

## <i class="fa fa-github"></i> [ManageIQ/manageiq-providers-amazon](https://github.com/ManageIQ/compare/petrosian-1...quinteros-1/manageiq-providers-amazon)

### Enhancement

* Update AWS instance_types [[#840]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/840)
* Update safe_load calls to work with psych 3/4 [[#837]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/837)
* Update AWS Regions as a scheduled task [[#834]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/834)
* Update AWS instance_types [[#835]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/835)
* Update AWS regions.yml [[#831]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/831)
* Update AWS instance_types [[#832]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/832)
* Update AWS instance_types [[#830]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/830)
* Update AWS instance_types [[#829]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/829)
* Update AWS instance_types [[#826]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/826)
* Update AWS instance_types [[#824]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/824)
* Update AWS instance_types [[#823]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/823)
* Update AWS instance_types [[#819]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/819)
* Update AWS instance_types [[#818]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/818)
* Update AWS instance_types [[#817]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/817)
* Update AWS instance_types [[#815]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/815)
* Update AWS instance_types [[#814]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/814)

### Other

* Refactor regions spec to not hard-code atypical regions [[#833]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/833)
* Drop Ruby 2.7 [[#836]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/836)
* Add ContainerManager #pause! and #resume! specs [[#828]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/828)
* Include shared EMS#pause!,#resume! specs [[#827]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/827)
* Update actions/checkout version to v4 [[#825]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/825)
* Fix CI 'if' ruby-version check for 3.0 [[#822]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/822)
* [QUINTEROS] Fixup CI 'if' ruby-version check for 3.0 [[#821]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/821)
* [QUINTEROS] Lock the release branch to test with ruby 3.0 [[#820]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/820)
* Update GitHub Actions versions [[#816]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/816)

---

## <i class="fa fa-github"></i> [ManageIQ/manageiq-providers-ansible_tower](https://github.com/ManageIQ/compare/petrosian-1...quinteros-1/manageiq-providers-ansible_tower)

### Bug

* Use the right foreign_key for Job#job_template [[#302]](https://github.com/ManageIQ/manageiq-providers-ansible_tower/pull/302)

### Other

* Drop Ruby 2.7 [[#300]](https://github.com/ManageIQ/manageiq-providers-ansible_tower/pull/300)
* Add EMS #pause! and #resume! specs [[#299]](https://github.com/ManageIQ/manageiq-providers-ansible_tower/pull/299)
* Update actions/checkout version to v4 [[#298]](https://github.com/ManageIQ/manageiq-providers-ansible_tower/pull/298)
* Fix CI 'if' ruby-version check for 3.0 [[#297]](https://github.com/ManageIQ/manageiq-providers-ansible_tower/pull/297)
* [QUINTEROS] Fixup CI 'if' ruby-version check for 3.0 [[#296]](https://github.com/ManageIQ/manageiq-providers-ansible_tower/pull/296)
* [QUINTEROS] Lock the release branch to test with ruby 3.0 [[#295]](https://github.com/ManageIQ/manageiq-providers-ansible_tower/pull/295)
* Update GitHub Actions versions [[#294]](https://github.com/ManageIQ/manageiq-providers-ansible_tower/pull/294)

---

## <i class="fa fa-github"></i> [ManageIQ/manageiq-providers-autosde](https://github.com/ManageIQ/compare/petrosian-1...quinteros-1/manageiq-providers-autosde)

### Bug

* Add zone_id to vcloud amqp validationDependencies [[#241]](https://github.com/ManageIQ/manageiq-providers-autosde/pull/241)
* host initiator creation: bug in the group/cluster field [[#233]](https://github.com/ManageIQ/manageiq-providers-autosde/pull/233)

### Enhancement

* storage service edit mode: check which attached resources are compliant to selected capabilities [[#226]](https://github.com/ManageIQ/manageiq-providers-autosde/pull/226)

### Other

* Drop Ruby 2.7 [[#240]](https://github.com/ManageIQ/manageiq-providers-autosde/pull/240)
* Add EMS #pause! and #resume! specs [[#239]](https://github.com/ManageIQ/manageiq-providers-autosde/pull/239)
* Update actions/checkout version to v4 [[#238]](https://github.com/ManageIQ/manageiq-providers-autosde/pull/238)
* Fix CI 'if' ruby-version check for 3.0 [[#237]](https://github.com/ManageIQ/manageiq-providers-autosde/pull/237)
* [QUINTEROS] Fixup CI 'if' ruby-version check for 3.0 [[#236]](https://github.com/ManageIQ/manageiq-providers-autosde/pull/236)
* [QUINTEROS] Lock the release branch to test with ruby 3.0 [[#235]](https://github.com/ManageIQ/manageiq-providers-autosde/pull/235)
* Update GitHub Actions versions [[#234]](https://github.com/ManageIQ/manageiq-providers-autosde/pull/234)

---

## <i class="fa fa-github"></i> [ManageIQ/manageiq-providers-awx](https://github.com/ManageIQ/compare/petrosian-1...quinteros-1/manageiq-providers-awx)

### Bug

* Use the right foreign_key for Job#job_template [[#22]](https://github.com/ManageIQ/manageiq-providers-awx/pull/22)

### Other

* Drop Ruby 2.7 [[#21]](https://github.com/ManageIQ/manageiq-providers-awx/pull/21)
* Add EMS #pause! and #resume! specs [[#20]](https://github.com/ManageIQ/manageiq-providers-awx/pull/20)
* Update actions/checkout version to v4 [[#19]](https://github.com/ManageIQ/manageiq-providers-awx/pull/19)
* Fix CI 'if' ruby-version check for 3.0 [[#18]](https://github.com/ManageIQ/manageiq-providers-awx/pull/18)
* [QUINTEROS] Fixup CI 'if' ruby-version check for 3.0 [[#17]](https://github.com/ManageIQ/manageiq-providers-awx/pull/17)
* [QUINTEROS] Lock the release branch to test with ruby 3.0 [[#16]](https://github.com/ManageIQ/manageiq-providers-awx/pull/16)
* Update GitHub Actions versions [[#15]](https://github.com/ManageIQ/manageiq-providers-awx/pull/15)

---

## <i class="fa fa-github"></i> [ManageIQ/manageiq-providers-azure](https://github.com/ManageIQ/compare/petrosian-1...quinteros-1/manageiq-providers-azure)

### Bug

* Add zone_id to AKS validationDependencies [[#545]](https://github.com/ManageIQ/manageiq-providers-azure/pull/545)
* Remove never used network manager metrics collector worker [[#536]](https://github.com/ManageIQ/manageiq-providers-azure/pull/536)

### Other

* Fix InventoryRefresh lazy_find deprecation warning [[#543]](https://github.com/ManageIQ/manageiq-providers-azure/pull/543)
* Drop Ruby 2.7 [[#544]](https://github.com/ManageIQ/manageiq-providers-azure/pull/544)
* Add EMS #pause! and #resume! specs [[#542]](https://github.com/ManageIQ/manageiq-providers-azure/pull/542)
* Update actions/checkout version to v4 [[#541]](https://github.com/ManageIQ/manageiq-providers-azure/pull/541)
* Fix CI 'if' ruby-version check for 3.0 [[#540]](https://github.com/ManageIQ/manageiq-providers-azure/pull/540)
* [QUINTEROS] Fixup CI 'if' ruby-version check for 3.0 [[#539]](https://github.com/ManageIQ/manageiq-providers-azure/pull/539)
* [QUINTEROS] Lock the release branch to test with ruby 3.0 [[#538]](https://github.com/ManageIQ/manageiq-providers-azure/pull/538)
* Update GitHub Actions versions [[#537]](https://github.com/ManageIQ/manageiq-providers-azure/pull/537)

---

## <i class="fa fa-github"></i> [ManageIQ/manageiq-providers-azure_stack](https://github.com/ManageIQ/compare/petrosian-1...quinteros-1/manageiq-providers-azure_stack)

### Other

* Drop Ruby 2.7 [[#101]](https://github.com/ManageIQ/manageiq-providers-azure_stack/pull/101)
* Add EMS #pause! and #resume! specs [[#100]](https://github.com/ManageIQ/manageiq-providers-azure_stack/pull/100)
* Update actions/checkout version to v4 [[#99]](https://github.com/ManageIQ/manageiq-providers-azure_stack/pull/99)
* Fix CI 'if' ruby-version check for 3.0 [[#98]](https://github.com/ManageIQ/manageiq-providers-azure_stack/pull/98)
* [QUINTEROS] Fixup CI 'if' ruby-version check for 3.0 [[#97]](https://github.com/ManageIQ/manageiq-providers-azure_stack/pull/97)
* [QUINTEROS] Lock the release branch to test with ruby 3.0 [[#96]](https://github.com/ManageIQ/manageiq-providers-azure_stack/pull/96)
* Update GitHub Actions versions [[#95]](https://github.com/ManageIQ/manageiq-providers-azure_stack/pull/95)

---

## <i class="fa fa-github"></i> [ManageIQ/manageiq-providers-cisco_intersight](https://github.com/compare/petrosian-1...quinteros-1/ManageIQ/manageiq-providers-cisco_intersight)

### Bug

* Add zone_id to provider validationDependencies [[#104]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/104)

### Other

* Update yarn to stable v4.0.2 [[#102]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/102)
* Drop Ruby 2.7 [[#101]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/101)
* Add EMS #pause! and #resume! specs [[#100]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/100)
* Update yarn to 4.0.0.rc51 since it's works on s390x [[#99]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/99)
* Update actions/checkout version to v4 [[#98]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/98)
* Fix CI 'if' ruby-version check for 3.0 [[#97]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/97)
* [QUINTEROS] Fixup CI 'if' ruby-version check for 3.0 [[#96]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/96)
* [QUINTEROS] Lock the release branch to test with ruby 3.0 [[#95]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/95)
* Update GitHub Actions versions [[#94]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/94)

---

## <i class="fa fa-github"></i> [ManageIQ/manageiq-providers-foreman](https://github.com/ManageIQ/compare/petrosian-1...quinteros-1/manageiq-providers-foreman)

### Bug

* Fix deliver_to_automate not taking any args [[#116]](https://github.com/ManageIQ/manageiq-providers-foreman/pull/116)

### Other

* Drop Ruby 2.7 [[#122]](https://github.com/ManageIQ/manageiq-providers-foreman/pull/122)
* Update actions/checkout version to v4 [[#121]](https://github.com/ManageIQ/manageiq-providers-foreman/pull/121)
* Fix CI 'if' ruby-version check for 3.0 [[#120]](https://github.com/ManageIQ/manageiq-providers-foreman/pull/120)
* [QUINTEROS] Fixup CI 'if' ruby-version check for 3.0 [[#119]](https://github.com/ManageIQ/manageiq-providers-foreman/pull/119)
* [QUINTEROS] Lock the release branch to test with ruby 3.0 [[#118]](https://github.com/ManageIQ/manageiq-providers-foreman/pull/118)
* Update GitHub Actions versions [[#117]](https://github.com/ManageIQ/manageiq-providers-foreman/pull/117)

---

## <i class="fa fa-github"></i> [ManageIQ/manageiq-providers-google](https://github.com/ManageIQ/compare/petrosian-1...quinteros-1/manageiq-providers-google)

### Bug

* Cleanup any created disks if start_clone fails [[#256]](https://github.com/ManageIQ/manageiq-providers-google/pull/256)
* Fix google API pagination [[#254]](https://github.com/ManageIQ/manageiq-providers-google/pull/254)

### Other

* Bump fog-google to 1.23.0 to pull in paging fix [[#257]](https://github.com/ManageIQ/manageiq-providers-google/pull/257)
* Drop Ruby 2.7 [[#255]](https://github.com/ManageIQ/manageiq-providers-google/pull/255)
* Update actions/checkout version to v4 [[#253]](https://github.com/ManageIQ/manageiq-providers-google/pull/253)
* Fix CI 'if' ruby-version check for 3.0 [[#252]](https://github.com/ManageIQ/manageiq-providers-google/pull/252)
* [QUINTEROS] Fixup CI 'if' ruby-version check for 3.0 [[#251]](https://github.com/ManageIQ/manageiq-providers-google/pull/251)
* [QUINTEROS] Lock the release branch to test with ruby 3.0 [[#250]](https://github.com/ManageIQ/manageiq-providers-google/pull/250)
* Update GitHub Actions versions [[#249]](https://github.com/ManageIQ/manageiq-providers-google/pull/249)

---

## <i class="fa fa-github"></i> [ManageIQ/manageiq-providers-ibm_cic](https://github.com/ManageIQ/compare/petrosian-1...quinteros-1/manageiq-providers-ibm_cic)

### Bug

* Fix expired_at causing VCRs to fail authentication [[#35]](https://github.com/ManageIQ/manageiq-providers-ibm_cic/pull/35)

### Enhancement

* add IBM CIC missing catalog type [[#40]](https://github.com/ManageIQ/manageiq-providers-ibm_cic/pull/40)

### Other

* Drop Ruby 2.7 [[#42]](https://github.com/ManageIQ/manageiq-providers-ibm_cic/pull/42)
* Update actions/checkout version to v4 [[#41]](https://github.com/ManageIQ/manageiq-providers-ibm_cic/pull/41)
* Fix CI 'if' ruby-version check for 3.0 [[#39]](https://github.com/ManageIQ/manageiq-providers-ibm_cic/pull/39)
* [QUINTEROS] Fixup CI 'if' ruby-version check for 3.0 [[#38]](https://github.com/ManageIQ/manageiq-providers-ibm_cic/pull/38)
* [QUINTEROS] Lock the release branch to test with ruby 3.0 [[#37]](https://github.com/ManageIQ/manageiq-providers-ibm_cic/pull/37)
* Update GitHub Actions versions [[#36]](https://github.com/ManageIQ/manageiq-providers-ibm_cic/pull/36)

---

## <i class="fa fa-github"></i> [ManageIQ/manageiq-providers-ibm_cloud](https://github.com/ManageIQ/compare/petrosian-1...quinteros-1/manageiq-providers-ibm_cloud)

### Bug

* Fix duplicate advanced settings [[#483]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/483)
* Add zone_id to provider validationDependencies for metrics endpoint [[#480]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/480)
* Add targeted refresh specs to PowerVS / Fix targeted VM refresh bug [[#479]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/479)
* Handle VPC flavor with nil :disks value [[#475]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/475)
* Bump all ibm_cloud/ibm_vpc gems for http 5.1 to resolve known HTTP::ConnectionError issues [[#473]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/473)
* Fix missing package.json metadata [[#472]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/472)
* Remove 'migratable' param from PVS VM provision [[#465]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/465)
* Fix clone_to_template provision preparation [[#463]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/463)
* PowerVS: Attach newly created volumes during VM provision [[#462]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/462)
* Fix missing System Profile dropdown VPC Provision [[#461]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/461)
* PowerVS Cloning: Use ems_ref, not name, to find new VM or Template [[#455]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/455)

### Enhancement

* Add new VPC regions [[#484]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/484)
* Use new resource pool cpu_core_* columns [[#474]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/474)
* Retirement settings upon VM provision in PowerVS [[#460]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/460)
* Use consistent child manager description [[#459]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/459)

### Other

* Update yarn to stable v4.0.2 [[#478]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/478)
* Drop Ruby 2.7 [[#477]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/477)
* Update GitHub CODEOWNERS [[#476]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/476)
* Update yarn to 4.0.0.rc51 since it's works on s390x [[#471]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/471)
* Update actions/checkout version to v4 [[#470]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/470)
* Fix CI 'if' ruby-version check for 3.0 [[#468]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/468)
* [QUINTEROS] Fixup CI 'if' ruby-version check for 3.0 [[#467]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/467)
* [QUINTEROS] Lock the release branch to test with ruby 3.0 [[#466]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/466)
* Update GitHub Actions versions [[#464]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/464)

---

## <i class="fa fa-github"></i> [ManageIQ/manageiq-providers-ibm_power_hmc](https://github.com/ManageIQ/compare/petrosian-1...quinteros-1/manageiq-providers-ibm_power_hmc)

### Bug

* Change default API port to 443 [[#148]](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/148)
* Fix provisioning dialog 'src_vm_id' method [[#145]](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/145)

### Enhancement

* Use new resource pool cpu_core_* columns [[#147]](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/147)

### Other

* Drop Ruby 2.7 [[#150]](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/150)
* Update GitHub CODEOWNERS [[#149]](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/149)
* Update actions/checkout version to v4 [[#144]](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/144)
* Fix CI 'if' ruby-version check for 3.0 [[#143]](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/143)
* [QUINTEROS] Fixup CI 'if' ruby-version check for 3.0 [[#142]](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/142)
* [QUINTEROS] Lock the release branch to test with ruby 3.0 [[#141]](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/141)
* Update GitHub Actions versions [[#140]](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/140)

---

## <i class="fa fa-github"></i> [ManageIQ/manageiq-providers-ibm_power_vc](https://github.com/ManageIQ/compare/petrosian-1...quinteros-1/manageiq-providers-ibm_power_vc)

### Bug

* Add zone_id to provider validationDependencies [[#100]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/100)
* add log level for IbmPowerVc [[#88]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/88)

### Enhancement

* Ibm PowerVc events [[#89]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/89)

### Other

* Update yarn to stable v4.0.2 [[#99]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/99)
* Drop Ruby 2.7 [[#98]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/98)
* Update GitHub CODEOWNERS [[#97]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/97)
* Update yarn to 4.0.0.rc51 since it's works on s390x [[#96]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/96)
* Update actions/checkout version to v4 [[#95]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/95)
* Fix CI 'if' ruby-version check for 3.0 [[#94]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/94)
* [QUINTEROS] Fixup CI 'if' ruby-version check for 3.0 [[#93]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/93)
* [QUINTEROS] Lock the release branch to test with ruby 3.0 [[#92]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/92)
* Update GitHub Actions versions [[#91]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/91)
* Update VCRs for fog-openstack v1 [[#87]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/87)

---

## <i class="fa fa-github"></i> [ManageIQ/manageiq-providers-ibm_terraform](https://github.com/ManageIQ/compare/petrosian-1...quinteros-1/manageiq-providers-ibm_terraform)

### Other

* Drop Ruby 2.7 [[#100]](https://github.com/ManageIQ/manageiq-providers-ibm_terraform/pull/100)
* Update actions/checkout version to v4 [[#99]](https://github.com/ManageIQ/manageiq-providers-ibm_terraform/pull/99)
* Fix CI 'if' ruby-version check for 3.0 [[#98]](https://github.com/ManageIQ/manageiq-providers-ibm_terraform/pull/98)
* [QUINTEROS] Fixup CI 'if' ruby-version check for 3.0 [[#97]](https://github.com/ManageIQ/manageiq-providers-ibm_terraform/pull/97)
* [QUINTEROS] Lock the release branch to test with ruby 3.0 [[#96]](https://github.com/ManageIQ/manageiq-providers-ibm_terraform/pull/96)
* Update GitHub Actions versions [[#95]](https://github.com/ManageIQ/manageiq-providers-ibm_terraform/pull/95)

---

## <i class="fa fa-github"></i> [ManageIQ/manageiq-providers-kubernetes](https://github.com/ManageIQ/compare/petrosian-1...quinteros-1/manageiq-providers-kubernetes)

### Bug

* Add zone_id to provider validationDependencies [[#513]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/513)
* Reject any events which do not have a timestamp [[#501]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/501)
* Fix No Method get_nodes for NilClass invalid token [[#500]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/500)
* Fix started_at/finished_at always being nil [[#496]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/496)
* Convert the duration to a float [[#497]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/497)
* Removed the `auth_key` from list of Validation Dependencies in Metrics and Alerts [[#492]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/492)
* Check metrics authentication validity before perf_capture_queue [[#493]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/493)

### Enhancement

* We explicitly serialize objects so we need to permit yaml loading them [[#512]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/512)
* Added Helper Text To the Token Field [[#498]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/498)

### Other

* Drop Ruby 2.7 [[#511]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/511)
* The prometheus_alerts endpoint is no longer supported [[#506]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/506)
* Update actions/checkout version to v4 [[#505]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/505)
* Fix CI 'if' ruby-version check for 3.0 [[#504]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/504)
* [QUINTEROS] Fixup CI 'if' ruby-version check for 3.0 [[#503]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/503)
* [QUINTEROS] Lock the release branch to test with ruby 3.0 [[#502]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/502)
* Update GitHub Actions versions [[#499]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/499)
* Revert "Merge pull request #492 from DavidResende0/remove-validation-dependecies" [[#495]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/495)

---

## <i class="fa fa-github"></i> [ManageIQ/manageiq-providers-kubevirt](https://github.com/ManageIQ/compare/petrosian-1...quinteros-1/manageiq-providers-kubevirt)

### Enhancement

* Update safe_load calls to work with psych 3/4 [[#226]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/226)

### Other

* Drop Ruby 2.7 [[#225]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/225)
* Update actions/checkout version to v4 [[#224]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/224)
* Fix CI 'if' ruby-version check for 3.0 [[#223]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/223)
* [QUINTEROS] Fixup CI 'if' ruby-version check for 3.0 [[#222]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/222)
* [QUINTEROS] Lock the release branch to test with ruby 3.0 [[#221]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/221)
* Update GitHub Actions versions [[#220]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/220)

---

## <i class="fa fa-github"></i> [ManageIQ/manageiq-providers-lenovo](https://github.com/ManageIQ/compare/petrosian-1...quinteros-1/manageiq-providers-lenovo)

### Bug

* Add zone_id to provider validationDependencies [[#399]](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/399)
* Fix verify_credentials for an existing EMS [[#396]](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/396)
* Fix deliver_to_automate not taking args [[#388]](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/388)

### Other

* Update yarn to stable v4.0.2 [[#398]](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/398)
* Drop Ruby 2.7 [[#397]](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/397)
* Update yarn to 4.0.0.rc51 since it's works on s390x [[#395]](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/395)
* Update actions/checkout version to v4 [[#394]](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/394)
* Fix CI 'if' ruby-version check for 3.0 [[#393]](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/393)
* [QUINTEROS] Fixup CI 'if' ruby-version check for 3.0 [[#392]](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/392)
* [QUINTEROS] Lock the release branch to test with ruby 3.0 [[#391]](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/391)
* Update GitHub Actions versions [[#390]](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/390)

---

## <i class="fa fa-github"></i> [ManageIQ/manageiq-providers-nsxt](https://github.com/ManageIQ/compare/petrosian-1...quinteros-1/manageiq-providers-nsxt)

### Bug

* Lock down es-abstract [[#89]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/89)

### Other

* Update yarn to stable v4.0.2 [[#96]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/96)
* Drop Ruby 2.7 [[#95]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/95)
* Bump semver from 5.7.1 to 5.7.2 [[#87]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/87)
* Update yarn to 4.0.0.rc51 since it's works on s390x [[#94]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/94)
* Update actions/checkout version to v4 [[#93]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/93)
* Fix CI 'if' ruby-version check for 3.0 [[#92]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/92)
* [QUINTEROS] Fixup CI 'if' ruby-version check for 3.0 [[#91]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/91)
* [QUINTEROS] Lock the release branch to test with ruby 3.0 [[#90]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/90)
* Update GitHub Actions versions [[#88]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/88)

---

## <i class="fa fa-github"></i> [ManageIQ/manageiq-providers-nuage](https://github.com/ManageIQ/compare/petrosian-1...quinteros-1/manageiq-providers-nuage)

### Bug

* Add zone_id to provider validationDependencies [[#303]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/303)
* Revert "Merge pull request #298 from agrare/replace_xlab_si_with_xlab-si" [[#300]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/300)
* Fix xlab-si galaxy roles pointing to invalid repository URL [[#298]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/298)
* Require the gem defining the constant we're subclassing [[#299]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/299)
* Ubuntu Kinetic has been removed, replace with Lunar [[#297]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/297)

### Enhancement

* Remove lib/gem-name.rb loader in favor of namespaced file [[#290]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/290)

### Other

* Update yarn to stable v4.0.2 [[#302]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/302)
* Drop Ruby 2.7 [[#301]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/301)
* Update yarn to 4.0.0.rc51 since it's works on s390x [[#296]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/296)
* Update actions/checkout version to v4 [[#295]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/295)
* Fix CI 'if' ruby-version check for 3.0 [[#294]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/294)
* [QUINTEROS] Fixup CI 'if' ruby-version check for 3.0 [[#293]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/293)
* [QUINTEROS] Lock the release branch to test with ruby 3.0 [[#292]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/292)
* Update GitHub Actions versions [[#291]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/291)

---

## <i class="fa fa-github"></i> [ManageIQ/manageiq-providers-openshift](https://github.com/ManageIQ/compare/petrosian-1...quinteros-1/manageiq-providers-openshift)

### Other

* Drop Ruby 2.7 [[#252]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/252)
* Update actions/checkout version to v4 [[#251]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/251)
* Fix CI 'if' ruby-version check for 3.0 [[#250]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/250)
* [QUINTEROS] Fixup CI 'if' ruby-version check for 3.0 [[#249]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/249)
* [QUINTEROS] Lock the release branch to test with ruby 3.0 [[#248]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/248)
* Update GitHub Actions versions [[#247]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/247)

---

## <i class="fa fa-github"></i> [ManageIQ/manageiq-providers-openstack](https://github.com/ManageIQ/compare/petrosian-1...quinteros-1/manageiq-providers-openstack)

### Bug

* Add zone_id to provider validationDependencies [[#870]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/870)
* Don't store AR objects in Notification options [[#866]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/866)
* Fix Gem.loaded_specs looking for wrong key name [[#863]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/863)
* Allow numberic-only passwords for keystone v3 again [[#859]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/859)
* Ubuntu Kinetic has been removed, replace with Lunar [[#861]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/861)
* Fix incorrect constant name reference by referencing HostAggregate [[#853]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/853)
* Fix CloudNetwork#delete_cloud_network argument error [[#852]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/852)

### Enhancement

* Psych 4 support [[#865]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/865)

### Other

* Drop Ruby 2.7 [[#864]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/864)
* Update actions/checkout version to v4 [[#860]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/860)
* Fix CI 'if' ruby-version check for 3.0 [[#858]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/858)
* [QUINTEROS] Fixup CI 'if' ruby-version check for 3.0 [[#857]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/857)
* [QUINTEROS] Lock the release branch to test with ruby 3.0 [[#856]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/856)
* Update GitHub Actions versions [[#854]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/854)
* Move fix_token_expries_at to spec/support [[#851]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/851)

---

## <i class="fa fa-github"></i> [ManageIQ/manageiq-providers-oracle_cloud](https://github.com/ManageIQ/compare/petrosian-1...quinteros-1/manageiq-providers-oracle_cloud)

### Bug

* Fix for blockstorage_client changed API [[#93]](https://github.com/ManageIQ/manageiq-providers-oracle_cloud/pull/93)

### Other

* Drop Ruby 2.7 [[#94]](https://github.com/ManageIQ/manageiq-providers-oracle_cloud/pull/94)
* Update actions/checkout version to v4 [[#92]](https://github.com/ManageIQ/manageiq-providers-oracle_cloud/pull/92)
* Fix CI 'if' ruby-version check for 3.0 [[#91]](https://github.com/ManageIQ/manageiq-providers-oracle_cloud/pull/91)
* [QUINTEROS] Fixup CI 'if' ruby-version check for 3.0 [[#90]](https://github.com/ManageIQ/manageiq-providers-oracle_cloud/pull/90)
* [QUINTEROS] Lock the release branch to test with ruby 3.0 [[#89]](https://github.com/ManageIQ/manageiq-providers-oracle_cloud/pull/89)
* Update GitHub Actions versions [[#88]](https://github.com/ManageIQ/manageiq-providers-oracle_cloud/pull/88)

---

## <i class="fa fa-github"></i> [ManageIQ/manageiq-providers-ovirt](https://github.com/ManageIQ/compare/petrosian-1...quinteros-1/manageiq-providers-ovirt)

### Bug

* Check supported storage type for vm Smartstate analysis scan [[#653]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/653)
* Fix OVN refresher spec "expires" causing failures [[#646]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/646)

### Enhancement

* Use unsafe_load to load a test file with unpermitted classes [[#655]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/655)

### Other

* Drop Ruby 2.7 [[#654]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/654)
* Update actions/checkout version to v4 [[#652]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/652)
* Fix CI 'if' ruby-version check for 3.0 [[#650]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/650)
* [QUINTEROS] Fixup CI 'if' ruby-version check for 3.0 [[#649]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/649)
* [QUINTEROS] Lock the release branch to test with ruby 3.0 [[#648]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/648)
* Update GitHub Actions versions [[#647]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/647)
* Use Rails.application.secrets for VCR hostnames [[#645]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/645)
* Update Ovirt OVN VCRs [[#644]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/644)

---

## <i class="fa fa-github"></i> [ManageIQ/manageiq-providers-red_hat_virtualization](https://github.com/compare/petrosian-1...quinteros-1/ManageIQ/manageiq-providers-red_hat_virtualization)

### Bug

* Fix targeted refresh duplicating external switches [[#33]](https://github.com/ManageIQ/manageiq-providers-red_hat_virtualization/pull/33)
* Fix the Redhat NetworkManager in create dropdown [[#31]](https://github.com/ManageIQ/manageiq-providers-red_hat_virtualization/pull/31)
* Fix OVN refresher spec "expires" causing failures [[#30]](https://github.com/ManageIQ/manageiq-providers-red_hat_virtualization/pull/30)

### Enhancement

* Use unsafe_load to load a test file with unpermitted classes [[#39]](https://github.com/ManageIQ/manageiq-providers-red_hat_virtualization/pull/39)

### Other

* Drop Ruby 2.7 [[#38]](https://github.com/ManageIQ/manageiq-providers-red_hat_virtualization/pull/38)
* Update actions/checkout version to v4 [[#37]](https://github.com/ManageIQ/manageiq-providers-red_hat_virtualization/pull/37)
* Fix CI 'if' ruby-version check for 3.0 [[#36]](https://github.com/ManageIQ/manageiq-providers-red_hat_virtualization/pull/36)
* [QUINTEROS] Fixup CI 'if' ruby-version check for 3.0 [[#35]](https://github.com/ManageIQ/manageiq-providers-red_hat_virtualization/pull/35)
* [QUINTEROS] Lock the release branch to test with ruby 3.0 [[#34]](https://github.com/ManageIQ/manageiq-providers-red_hat_virtualization/pull/34)
* Update GitHub Actions versions [[#32]](https://github.com/ManageIQ/manageiq-providers-red_hat_virtualization/pull/32)
* Update OVN VCR specs [[#29]](https://github.com/ManageIQ/manageiq-providers-red_hat_virtualization/pull/29)

---

## <i class="fa fa-github"></i> [ManageIQ/manageiq-providers-redfish](https://github.com/ManageIQ/compare/petrosian-1...quinteros-1/manageiq-providers-redfish)

### Bug

* Add zone_id to provider validationDependencies [[#186]](https://github.com/ManageIQ/manageiq-providers-redfish/pull/186)
* Handle missing UpdateService [[#182]](https://github.com/ManageIQ/manageiq-providers-redfish/pull/182)

### Other

* Update yarn to stable v4.0.2 [[#185]](https://github.com/ManageIQ/manageiq-providers-redfish/pull/185)
* Drop Ruby 2.7 [[#183]](https://github.com/ManageIQ/manageiq-providers-redfish/pull/183)
* Update yarn to 4.0.0.rc51 since it's works on s390x [[#181]](https://github.com/ManageIQ/manageiq-providers-redfish/pull/181)
* Update actions/checkout version to v4 [[#180]](https://github.com/ManageIQ/manageiq-providers-redfish/pull/180)
* Fix CI 'if' ruby-version check for 3.0 [[#179]](https://github.com/ManageIQ/manageiq-providers-redfish/pull/179)
* [QUINTEROS] Fixup CI 'if' ruby-version check for 3.0 [[#178]](https://github.com/ManageIQ/manageiq-providers-redfish/pull/178)
* [QUINTEROS] Lock the release branch to test with ruby 3.0 [[#177]](https://github.com/ManageIQ/manageiq-providers-redfish/pull/177)
* Update GitHub Actions versions [[#176]](https://github.com/ManageIQ/manageiq-providers-redfish/pull/176)

---

## <i class="fa fa-github"></i> [ManageIQ/manageiq-providers-vmware](https://github.com/ManageIQ/compare/petrosian-1...quinteros-1/manageiq-providers-vmware)

### Bug

* Fix VM terminate showing supported when running [[#897]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/897)
* Add zone_id to vcloud amqp validationDependencies [[#896]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/896)
* Add supports storage smartstate_analysis [[#887]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/887)
* Handle a HostSystem with missing product vendor [[#882]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/882)
* Don't delegate NetworkManager#zone to parent_manager [[#886]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/886)
* Set sub_event_type for com.vmware.cns.tasks.updatevolume [[#883]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/883)

### Enhancement

* Enable non-rails event catcher by default [[#894]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/894)
* Use unsafe_load to load a test file with unpermitted classes [[#890]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/890)
* Bump rbvmomi2 to 3.7.0 for vSphere 8.0U2 [[#884]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/884)
* Bump ffi-vix_disklib to pull in VDDK 8.0.1/8.0.2 [[#879]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/879)

### Other

* Delete EventCatcher worker_cmdline for non-rails worker [[#889]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/889)
* Drop Ruby 2.7 [[#888]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/888)
* Override CloudManager#network_manager to define type [[#885]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/885)
* Update actions/checkout version to v4 [[#881]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/881)
* Fix CI 'if' ruby-version check for 3.0 [[#878]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/878)
* [QUINTEROS] Fixup CI 'if' ruby-version check for 3.0 [[#877]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/877)
* [QUINTEROS] Lock the release branch to test with ruby 3.0 [[#876]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/876)
* Update GitHub Actions versions [[#875]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/875)

---

## <i class="fa fa-github"></i> [ManageIQ/manageiq-providers-workflows](https://github.com/ManageIQ/compare/petrosian-1...quinteros-1/manageiq-providers-workflows)

### Bug

* Fix tasks staying active for failed workflows [[#67]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/67)
* Ensure WorkflowInstance#credentials is not nil [[#66]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/66)
* Handle the case where `:credentials` column is `nil` [[#64]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/64)
* Fix issue where new service account ENV var is forced in every process [[#56]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/56)
* Bump floe to v0.4.1 for task output fixes [[#54]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/54)
* Strip trailing .$ from Credentials [[#49]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/49)
* Fix expected context after StateHistory rename [[#48]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/48)
* Override the podman image storage root directory [[#46]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/46)
* Set network=host for development mode [[#42]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/42)
* Normalize the ae_result passed to after_ae_delivery [[#38]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/38)
* Fix the default role from automation to automate [[#37]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/37)
* Fix WorkflowInstance#output not being set [[#35]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/35)
* Fix workflows queued on embedded_ansible [[#34]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/34)
* Fix Workflows Credentials from Authentication options API [[#33]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/33)
* Fix parent class for Workflows ScmCredential [[#32]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/32)
* Updated Workflows Credential Schema [[#30]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/30)
* Fix workflow_instance queue delivery [[#27]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/27)
* Always allow seeding even without prototype flag [[#26]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/26)

### Enhancement

* Update `:credentials` column if state sets a new credential [[#62]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/62)
* Pass the workflow service account [[#55]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/55)
* Enable Embedded Workflows by default [[#52]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/52)
* Pass manageiq_api url in global context [[#39]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/39)
* Run workflows asyncrhonously on MiqAutomationWorker [[#50]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/50)
* Pass namespace to the Floe Kubernetes Runner [[#51]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/51)
* Update Workflow#credential format [[#40]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/40)
* Set the Floe::Workflow::Runner based on platform [[#28]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/28)
* Allow creation of Credentials for Workflows [[#25]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/25)
* Invoke service before after callbacks [[#23]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/23)
* Add Workflows SCM Credential for Repositories [[#24]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/24)
* Add ability to pass zone or other role to run [[#22]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/22)

### Other

* Run apt-get update before install in bin/before_install [[#61]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/61)
* Bump floe for kubernetes image pull error fixes [[#60]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/60)
* Drop Ruby 2.7 [[#58]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/58)
* Update actions/checkout version to v4 [[#47]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/47)
* [QUINTEROS] Lock the release branch to test with ruby 3.0 [[#45]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/45)
* Add workflow_dispatch to ci.yaml [[#43]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/43)
* Update GitHub Actions versions [[#36]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/36)
* Move workflow executing into manageiq-floe [[#5]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/5)
* Use params_to_attributes from core [[#31]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/31)

---

## <i class="fa fa-github"></i> [ManageIQ/manageiq-rpm_build](https://github.com/ManageIQ/compare/petrosian-1...quinteros-1/manageiq-rpm_build)

### Bug

* [quinteros] Update version numbers for Quinteros-1 build and fix rpm issue [[#453]](https://github.com/ManageIQ/manageiq-rpm_build/pull/453)
* python cryptography requires rust [[#439]](https://github.com/ManageIQ/manageiq-rpm_build/pull/439)
* Add ansible-core 2.12.7 to our repos [[#438]](https://github.com/ManageIQ/manageiq-rpm_build/pull/438)
* Add manageiq user to disk group [[#435]](https://github.com/ManageIQ/manageiq-rpm_build/pull/435)
* Lock down psych to <4 [[#427]](https://github.com/ManageIQ/manageiq-rpm_build/pull/427)
* [QUINTEROS] Fix issues with RPM versioning after merge of master into quinteros [[#424]](https://github.com/ManageIQ/manageiq-rpm_build/pull/424)
* Fix missing git_ref default value [[#422]](https://github.com/ManageIQ/manageiq-rpm_build/pull/422)
* Add subuid/subgid for the manageiq user [[#415]](https://github.com/ManageIQ/manageiq-rpm_build/pull/415)
* core-utils is coreutils on appliances and coreutils-single on containers [[#414]](https://github.com/ManageIQ/manageiq-rpm_build/pull/414)
* Fix RPM spec require parsing issue [[#413]](https://github.com/ManageIQ/manageiq-rpm_build/pull/413)
* Lock down to UBI 8.8-1032 [[#416]](https://github.com/ManageIQ/manageiq-rpm_build/pull/416)
* Reverts a962a14350ad89d09f2d30a5983a08cd57f53e56 [[#410]](https://github.com/ManageIQ/manageiq-rpm_build/pull/410)
* Ensure yarn.lock is not updated by yarn install [[#409]](https://github.com/ManageIQ/manageiq-rpm_build/pull/409)
* Registry is set differently for diffrent yarn versions [[#407]](https://github.com/ManageIQ/manageiq-rpm_build/pull/407)
* Remove references to yarn 1.22.18 [[#402]](https://github.com/ManageIQ/manageiq-rpm_build/pull/402)
* Revert "Merge pull request #393 from bdunne/revert_278" [[#399]](https://github.com/ManageIQ/manageiq-rpm_build/pull/399)
* Revert "Merge pull request #278 from Minal-Mahor/s390x-changes" [[#393]](https://github.com/ManageIQ/manageiq-rpm_build/pull/393)
* Revert "Merge pull request #392 from bdunne/revert_275" [[#396]](https://github.com/ManageIQ/manageiq-rpm_build/pull/396)
* Revert "Merge pull request #275 from Minal-Mahor/s390x-changes" [[#392]](https://github.com/ManageIQ/manageiq-rpm_build/pull/392)
* disable git clean on s390x [[#278]](https://github.com/ManageIQ/manageiq-rpm_build/pull/278)

### Enhancement

* Revert "Temporarily remove the npm_registry until npm.manageiq.org is back up" [[#405]](https://github.com/ManageIQ/manageiq-rpm_build/pull/405)
* Add Podman as dependency for manageiq-appliance [[#401]](https://github.com/ManageIQ/manageiq-rpm_build/pull/401)

### Other

* Faster rpm build step 1 [[#437]](https://github.com/ManageIQ/manageiq-rpm_build/pull/437)
* Drop Ruby 2.7 [[#425]](https://github.com/ManageIQ/manageiq-rpm_build/pull/425)
* Drop s390x hack now that we are on yarn 4 [[#420]](https://github.com/ManageIQ/manageiq-rpm_build/pull/420)
* Revert "Lock down to UBI 8.8-1032" [[#419]](https://github.com/ManageIQ/manageiq-rpm_build/pull/419)
* Remove yarn1 hack now that yarn4 works on s390x [[#418]](https://github.com/ManageIQ/manageiq-rpm_build/pull/418)
* No longer need to build postgres ourselves. [[#421]](https://github.com/ManageIQ/manageiq-rpm_build/pull/421)
* Update actions/checkout version to v4 [[#417]](https://github.com/ManageIQ/manageiq-rpm_build/pull/417)
* declare rpm dependencies for creating user [[#406]](https://github.com/ManageIQ/manageiq-rpm_build/pull/406)
* [QUINTEROS] Lock the release branch to test with ruby 3.0 [[#412]](https://github.com/ManageIQ/manageiq-rpm_build/pull/412)
* Bump ipaddress python package [[#403]](https://github.com/ManageIQ/manageiq-rpm_build/pull/403)
* Allow workflow_dispatch GHA event [[#395]](https://github.com/ManageIQ/manageiq-rpm_build/pull/395)
* Set yarn version to 1.22.18 for s390x platform [[#275]](https://github.com/ManageIQ/manageiq-rpm_build/pull/275)

---

## <i class="fa fa-github"></i> [ManageIQ/manageiq-schema](https://github.com/ManageIQ/manageiq-schema/compare/petrosian-1...quinteros-1)

### Bug

* Fix OrchestrationStack#configuration_script reference [[#714]](https://github.com/ManageIQ/manageiq-schema/pull/714)
* Remove VimStrings from MiqQueue [[#706]](https://github.com/ManageIQ/manageiq-schema/pull/706)
* Delete invalid nil timestamp event streams [[#704]](https://github.com/ManageIQ/manageiq-schema/pull/704)
* Separate Role Access Restrictions for Service Templates [[#697]](https://github.com/ManageIQ/manageiq-schema/pull/697)

### Enhancement

* Add my_settings_view to roles [[#713]](https://github.com/ManageIQ/manageiq-schema/pull/713)
* Add payload validity attributes to configuration_scripts [[#710]](https://github.com/ManageIQ/manageiq-schema/pull/710)
* Add new resource_pools column for cpu_cores_* [[#708]](https://github.com/ManageIQ/manageiq-schema/pull/708)
* Support ruby 3.1 [[#707]](https://github.com/ManageIQ/manageiq-schema/pull/707)

### Other

* Drop Ruby 2.7 [[#709]](https://github.com/ManageIQ/manageiq-schema/pull/709)
* Update actions/checkout version to v4 [[#705]](https://github.com/ManageIQ/manageiq-schema/pull/705)
* Fix CI 'if' ruby-version check for 3.0 [[#703]](https://github.com/ManageIQ/manageiq-schema/pull/703)
* [QUINTEROS] Fixup CI 'if' ruby-version check for 3.0 [[#702]](https://github.com/ManageIQ/manageiq-schema/pull/702)
* [QUINTEROS] Lock the release branch to test with ruby 3.0 [[#701]](https://github.com/ManageIQ/manageiq-schema/pull/701)
* Update GitHub Actions versions [[#698]](https://github.com/ManageIQ/manageiq-schema/pull/698)
* Drop old_container_project_id [[#696]](https://github.com/ManageIQ/manageiq-schema/pull/696)
* Add spec to check whether foreign key columns are in an index [[#694]](https://github.com/ManageIQ/manageiq-schema/pull/694)
* add container indexes for foreign keys [[#695]](https://github.com/ManageIQ/manageiq-schema/pull/695)

---

## <i class="fa fa-github"></i> [ManageIQ/manageiq-ui-classic](https://github.com/ManageIQ/compare/petrosian-1...quinteros-1/manageiq-ui-classic)

### Bug

* Disable ip address fields when dhcp is selected [[#9063]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9063)
* Fix dashboard missing chart [[#9061]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9061)
* Fix for the error messages in Request-info tabs in the Service catalog item summary pages [[#9030]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9030)
* Fix EMS network "Region" text [[#9050]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9050)
* Filter vlans by switch and then lan [[#9036]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9036)
* Fixed Empty TableListView for Some Summary Pages [[#9039]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9039)
* Updated RecordId in Edit Management Engine Form [[#9038]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9038)
* filter vms displayed in tree lan [[#8998]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8998)
* Fixed `no implicit conversion of String into Integer` Error when Adding/Editing Container Provider [[#9025]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9025)
* Fix task details page [[#9026]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9026)
* Fix duplicate notifications and toasters [[#8867]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8867)
* Fix dashboard initial tab [[#9011]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9011)
* Fix warning for image with no title in structured list [[#9008]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9008)
* Fix trailing space for hostname in container provider form [[#9003]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9003)
* Return Username Field to "LDAP Group Look Up" Section [[#8996]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8996)
* Fix multiple vm reconfigure schema error [[#8981]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8981)
* Fix tasks permission issue [[#8978]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8978)
* Default Disk Unit Fix in VM Reconfigure Form [[#8974]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8974)
* Fix incorrect settings tab aria-labelledby id [[#8983]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8983)
* Fix my settings error screen [[#8980]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8980)
* Fix settings permissions [[#8969]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8969)
* Fixed Service Reconfigure Form and Request Summary Pages [[#8953]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8953)
* Fix copy time profile error [[#8967]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8967)
* Fix for custom button action events [[#8930]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8930)
* Update ui json files after core 22777, 22783, 22788 [[#8962]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8962)
* Use new dedicated my_settings_view permission [[#8957]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8957)
* Fixed accessibility issues with the server settings authentication page [[#8940]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8940)
* Fixed explorer tree accessibility violations [[#8952]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8952)
* Fix table header accessibility issues [[#8955]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8955)
* Remove Id from Host Endpoint When Submitting Form [[#8950]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8950)
* Fix for missing toast notifications [[#8948]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8948)
* Updated Component Names/Ids in Credential Mapper Form [[#8947]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8947)
* Refactoring the test cases for the ansible-playbook-workflow [[#8942]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8942)
* Fixed console warning for miq table cell button size [[#8941]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8941)
* Fix missing customization_templates list [[#8939]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8939)
* Fixed provision custom specifications table [[#8936]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8936)
* Change ui to display max alert description length [[#8933]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8933)
* Fixed optimization table translations [[#8931]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8931)
* Fixed chargeback rates title missing translation [[#8932]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8932)
* Fix .camelize after a &. safe navigation [[#8928]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8928)
* Fix for displaying ansible credential info [[#8926]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8926)
* Fixed service catalog permission errors [[#8927]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8927)
* Fixed Missing Styling for Remote Consoles [[#8919]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8919)
* Filter effect text and clear option missing in sub listing pages [[#8852]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8852)
* Fix Configuration>Access Control>Tenants list view [[#8898]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8898)
* More package lockdowns for s390x [[#8906]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8906)
* Fix for  multiselect dropdown to stay open for multiselection in edit… [[#8896]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8896)
* Refactor NotificationMessage component [[#8894]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8894)
* Fix for the subrow items in summary pages [[#8889]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8889)
* Revert "Ensure engines lock down es-abstract" [[#8884]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8884)
* Lock down es-abstract to avoid build issues on s390x [[#8882]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8882)
* Fix data-tables cell text alignment [[#8880]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8880)
* Added supports?(:update) check to Host Edit Form [[#8878]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8878)
* Ensure yarn.lock is not updated by yarn install [[#8879]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8879)
* Fix utilization chart [[#8868]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8868)
* Add Missing Routes to Configuration Profiles [[#8862]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8862)
* Fix overview->assignments accessibility check violation [[#8804]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8804)
* Mark Switch Labels for Translation in Settings-Category Form [[#8856]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8856)
* Fixed tasks table [[#8851]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8851)
* Fixed workflow repository specs [[#8854]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8854)
* Fixed ansible repository refresh buttons [[#8846]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8846)
* failure in resource compliance check in storage service update shouldn't block form submission  [[#8809]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8809)
* Fix dropdown options that overlaps with header [[#8841]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8841)
* Fix the request refresh button [[#8843]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8843)
* Enhance data tables to fix minor alignments issues [[#8832]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8832)
* Fixed physical providers empty page [[#8827]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8827)
* Fix page title on auth_error screen [[#8831]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8831)
* Translation fixes from 06/01 [[#8821]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8821)
* Fix text truncation in data tables [[#8825]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8825)
* host initiator creation: bug in the group/cluster field [[#8812]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8812)
* Fix Data/X-Axis Display Issue in Performance Charts [[#8802]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8802)
* Change redirects to be portable [[#8820]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8820)
* Fixed Provider Edit Form Preventing You From Saving Without Changing The Name [[#8818]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8818)
* Container and container node timelines require ems [[#8810]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8810)

### Enhancement

* Add noopener noreferrer to blank targets [[#9068]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9068)
* Added New Feature That Controls Who Can See Request Logs [[#8920]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8920)
* Add tasks detail page [[#9000]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9000)
* Fix for responsive styles for layout and summary [[#8985]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8985)
* Convert settings tabs to React [[#8956]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8956)
* Integrating react-markdown with miq-structured-list and adding a markdown preview to service-catalog-item's long-description field [[#8972]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8972)
* Replace .haml-lint.yml with a symlink to .rubocop.yml [[#8973]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8973)
* Integrating the CodeMirror into MiqStructuredList component. [[#8918]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8918)
* Refactor MiqStructuredList component [[#8877]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8877)
* Added better logo file validation [[#8934]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8934)
* Introducing payloads in Ansible Playbooks [[#8938]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8938)
* Introducing workflow status list in request's show page [[#8782]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8782)
* Credential Mapping Form [[#8905]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8905)
* Prefix workflows list with repository [[#8907]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8907)
* Give chargeback users sorting by date and project [[#8763]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8763)
* Enhance smart management presentation [[#8912]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8912)
* C and U collection form conversion from HAML to React [[#8909]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8909)
* Automate Method summary conversion from Haml to React [[#8803]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8803)
* Rename memory labels in reconfigure form [[#8881]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8881)
* Reconfigure form page enhancements [[#8871]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8871)
* Customizable chart top values (dropdown choices) [[#8826]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8826)
* Add Menu::Manager.reload method [[#8886]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8886)
* Adding embedded workflows to service catalog item [[#8815]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8815)
* po to json from July 11th [[#8864]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8864)
* Introducing embedded_workflow to dynamic select box in service dialogs [[#8844]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8844)
* Separate role access restrictions for catalog items [[#8833]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8833)
* Added Embedded Workflows / Credentials Page [[#8834]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8834)
* Enhance Workflow Repository Pages [[#8842]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8842)
* Mark workflow controllers as prototype [[#8848]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8848)
* Added vm refresh buttons [[#8850]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8850)
* Angular to react conversion Reconfigure form [[#8710]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8710)
* Add Toolbar and Edit Tag Button to Workflows Page [[#8838]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8838)
* Added Button Helper For Embedded Workflows [[#8835]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8835)
* Enhance the MiqStructuredList for summary pages [[#8814]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8814)
* Updated rake locale: po_to_json from May 14th catalogs [[#8800]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8800)

### Other

* Simplify regex to remove_right_size_zeros [[#9072]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9072)
* Updated ui translation json files based on core 22789 and 22834 [[#9015]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9015)
* Updated Flash Message Text for Consistency [[#9012]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9012)
* Revert s390x lockdowns [[#8993]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8993)
* Upgrade carbon packages to release 10.59.17 [[#8984]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8984)
* Update yarn.lock with latest dependencies [[#8997]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8997)
* Fix dashboard accessibility issues [[#8994]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8994)
* Update yarn.lock packages [[#8989]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8989)
* [Quinteros] Fix failing snapshot specs [[#8992]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8992)
* Fix utilization accessibility issues [[#8982]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8982)
* Remove legacy settings code [[#8965]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8965)
* Update yarn to stable v4.0.2 [[#8968]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8968)
* Resorted component-definitions-common.js [[#8963]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8963)
* Updated the package babel/core [[#8959]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8959)
* Updated ui json files after core 22770 22781 [[#8960]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8960)
* Rubocop Fixes in routes.rb [[#8845]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8845)
* Drop Ruby 2.7 [[#8949]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8949)
* Remove the s390x hack now that we are on yarn4 [[#8925]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8925)
* Update yarn to 4.0.0.rc51 since it's works on s390x [[#8924]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8924)
* Update actions/checkout version to v4 [[#8923]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8923)
* More s390x lockdowns [[#8915]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8915)
* Renamed first_user_summary to method_details [[#8913]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8913)
* Add chargeback rates cypress tests [[#8899]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8899)
* Fix CI 'if' ruby-version check for 3.0 [[#8904]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8904)
* [QUINTEROS] Lock the release branch to test with ruby 3.0 / Fixup CI 'if' ruby-version check for 3.0 [[#8902]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8902)
* Updated translation json files after core 22621 22654 [[#8897]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8897)
* Fix cypress config file [[#8893]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8893)
* Update GitHub Actions versions [[#8870]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8870)
* Add Cypress to GitHub Actions [[#8866]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8866)
* Delete the cypress videos for passing tests on CI [[#8863]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8863)
* Fixed dashboard tests [[#8860]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8860)
* Update cypress version [[#8861]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8861)
* Add cypress:run:edge command [[#8858]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8858)
* Added Overview > Dashboard Cypress tests [[#8857]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8857)
* Fixed cypress logout test [[#8855]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8855)
* Update searchbox tests [[#8829]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8829)
* Remove unneccessary cypress tests [[#8830]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8830)
* Add logout cypress test [[#8828]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8828)
* Fixed empty db menu tests [[#8824]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8824)
* Fix searchbox cypress tests [[#8822]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8822)
* Fixed missing menu tests [[#8819]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8819)
* Fix cypress tests for firefox [[#8816]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8816)
* Added menu item tests to check for non error screens [[#8813]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8813)
* Update cypress [[#8811]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8811)
* Initial cypress fix [[#8805]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8805)

---

## <i class="fa fa-github"></i> [ManageIQ/manageiq-ui-service](https://github.com/ManageIQ/compare/petrosian-1...quinteros-1/manageiq-ui-service)

### Bug

* Fix Notification Drawer in Production [[#1865]](https://github.com/ManageIQ/manageiq-ui-service/pull/1865)
* More package lockdowns for s390x [[#1860]](https://github.com/ManageIQ/manageiq-ui-service/pull/1860)
* Lock down es-abstract to avoid build issues on s390x [[#1857]](https://github.com/ManageIQ/manageiq-ui-service/pull/1857)

### Enhancement

* Prevent autocomplete on login fields [[#1884]](https://github.com/ManageIQ/manageiq-ui-service/pull/1884)
* Add noopener noreferrer to blank targets [[#1883]](https://github.com/ManageIQ/manageiq-ui-service/pull/1883)

### Other

* Revert s390x lockdowns [[#1874]](https://github.com/ManageIQ/manageiq-ui-service/pull/1874)
* Update yarn.lock packages [[#1873]](https://github.com/ManageIQ/manageiq-ui-service/pull/1873)
* Update yarn to stable v4.0.2 [[#1872]](https://github.com/ManageIQ/manageiq-ui-service/pull/1872)
* Bump get-func-name from 2.0.0 to 2.0.2 [[#1867]](https://github.com/ManageIQ/manageiq-ui-service/pull/1867)
* Bump word-wrap from 1.2.3 to 1.2.5 [[#1866]](https://github.com/ManageIQ/manageiq-ui-service/pull/1866)
* Bump socket.io-parser from 4.2.2 to 4.2.4 [[#1856]](https://github.com/ManageIQ/manageiq-ui-service/pull/1856)
* Bump semver from 5.7.1 to 5.7.2 [[#1853]](https://github.com/ManageIQ/manageiq-ui-service/pull/1853)
* Upgrade to yarn 4.0.0-rc.51 which works on s390x [[#1863]](https://github.com/ManageIQ/manageiq-ui-service/pull/1863)
* Update actions/checkout version to v4 [[#1862]](https://github.com/ManageIQ/manageiq-ui-service/pull/1862)
* More s390x lockdowns [[#1861]](https://github.com/ManageIQ/manageiq-ui-service/pull/1861)
* Update GitHub Actions versions [[#1855]](https://github.com/ManageIQ/manageiq-ui-service/pull/1855)
