---
layout: page
title: Changelog from Quinteros-2 to Radjabov-1
---

## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq](https://github.com/ManageIQ/manageiq/compare/quinteros-2.2...radjabov-1)

### Bug

* [radjabov] fix container build [[#23411]](https://github.com/ManageIQ/manageiq/pull/23411)
* [radjabov] Add missing directory for postgresql pidfile [[#23410]](https://github.com/ManageIQ/manageiq/pull/23410)
* Use foreign_key on the base model's name if ems_events association doesn't exist [[#23296]](https://github.com/ManageIQ/manageiq/pull/23296)
* Normalize ol_x64 as oracle OS [[#23290]](https://github.com/ManageIQ/manageiq/pull/23290)
* Avoid scope query when preloading [[#23277]](https://github.com/ManageIQ/manageiq/pull/23277)
* Resurrect dashboard widgets not actually using rss feeds [[#23264]](https://github.com/ManageIQ/manageiq/pull/23264)
* Reset cached secrets on Rails 7.0 [[#23259]](https://github.com/ManageIQ/manageiq/pull/23259)
* Fix missing 'storages' association on Datacenter [[#23252]](https://github.com/ManageIQ/manageiq/pull/23252)
* Remove task_id from AE deliver_queue [[#23239]](https://github.com/ManageIQ/manageiq/pull/23239)
* Remove subclassing hack by not subclassing EMS [[#23211]](https://github.com/ManageIQ/manageiq/pull/23211)
* Fix sporadic ansible-runner macOS bug and remove extra listener thread [[#23229]](https://github.com/ManageIQ/manageiq/pull/23229)
* Host#verify_credentials_task payload string keys [[#23222]](https://github.com/ManageIQ/manageiq/pull/23222)
* Mark workers associated with failed systemd units as stopped [[#23182]](https://github.com/ManageIQ/manageiq/pull/23182)
* Bump smartstate for MiqTempfile kwargs fix [[#23194]](https://github.com/ManageIQ/manageiq/pull/23194)
* Require uuidtools in MiqServer::EnvironmentManager [[#23184]](https://github.com/ManageIQ/manageiq/pull/23184)
* Fix Marshal.load ArgumentError on ruby3.3 [[#23219]](https://github.com/ManageIQ/manageiq/pull/23219)
* Remove newlines from error message [[#23215]](https://github.com/ManageIQ/manageiq/pull/23215)
* Fix k8s deployment marshal error with EMS workers [[#23208]](https://github.com/ManageIQ/manageiq/pull/23208)
* Fix issue where an engine could be nested in another engine [[#23196]](https://github.com/ManageIQ/manageiq/pull/23196)
* Fix brakeman fingerprint patch on clones [[#23191]](https://github.com/ManageIQ/manageiq/pull/23191)
* Fix sporadic blacklist spec [[#23190]](https://github.com/ManageIQ/manageiq/pull/23190)
* Revert "Merge pull request #22879 from Guddetisandeep/resource_pool" [[#23169]](https://github.com/ManageIQ/manageiq/pull/23169)
* Fix inconsistent dialog input for Workflows [[#23138]](https://github.com/ManageIQ/manageiq/pull/23138)
* Fix MiqRequestTask ResourceAction with a Workflow [[#23123]](https://github.com/ManageIQ/manageiq/pull/23123)
* Link MiqWorker record to a running pod when not created using run_single_worker.rb [[#23112]](https://github.com/ManageIQ/manageiq/pull/23112)
* Fix MiqServer WorkerManager Process with Non Rails workers [[#23117]](https://github.com/ManageIQ/manageiq/pull/23117)
* fix tools/feature_supports_matrix [[#23160]](https://github.com/ManageIQ/manageiq/pull/23160)
* Fix undefined method while getting database configuration [[#23136]](https://github.com/ManageIQ/manageiq/pull/23136)
* Don't STI load via the descendants/subclasses hooks during code reload [[#23134]](https://github.com/ManageIQ/manageiq/pull/23134)
* Fix non rails worker starting on podified [[#23116]](https://github.com/ManageIQ/manageiq/pull/23116)
* Added --prune option to remove deleted branches from the remote repos… [[#23115]](https://github.com/ManageIQ/manageiq/pull/23115)
* escape table names and column names [[#23113]](https://github.com/ManageIQ/manageiq/pull/23113)
* Bump manageiq-appliance_console to 9.1.0 [[#23105]](https://github.com/ManageIQ/manageiq/pull/23105)
* Fix ensure_kube_monitors_started alive? [[#23103]](https://github.com/ManageIQ/manageiq/pull/23103)
* Fix rails 7 deprecation [[#23083]](https://github.com/ManageIQ/manageiq/pull/23083)
* base_class is now memoized via inherited hook so it must run first [[#23070]](https://github.com/ManageIQ/manageiq/pull/23070)
* Lock down ffi due to build issues [[#23056]](https://github.com/ManageIQ/manageiq/pull/23056)
* Ignore Gemfile.lock.release check on revert branches [[#23047]](https://github.com/ManageIQ/manageiq/pull/23047)
* Fix the class name for the storage_vmware factory [[#23043]](https://github.com/ManageIQ/manageiq/pull/23043)
* Revert Setup Settings constant before the database is connected [[#23038]](https://github.com/ManageIQ/manageiq/pull/23038)
* Don't send a 0.minute timeout for EmbeddedAnsible Playbook run if execution_ttl is not passed [[#23035]](https://github.com/ManageIQ/manageiq/pull/23035)
* Mark the MiqTask as finished if GenericMailer fails due to missing notifier role [[#23036]](https://github.com/ManageIQ/manageiq/pull/23036)
*  Fixed ansible tower templates title [[#23032]](https://github.com/ManageIQ/manageiq/pull/23032)
* Bump appliance_console for kafka client fix [[#23024]](https://github.com/ManageIQ/manageiq/pull/23024)
* Rework Kafka health check [[#23020]](https://github.com/ManageIQ/manageiq/pull/23020)
* Improve the defaults for optional positional AnsibleRunnerWorkflow parameters [[#23026]](https://github.com/ManageIQ/manageiq/pull/23026)
* Update GitWorktree/Rugged remote URL before pull if it has changed [[#22972]](https://github.com/ManageIQ/manageiq/pull/22972)
* fix MiqProvisionTask#statemachine_task_status [[#23027]](https://github.com/ManageIQ/manageiq/pull/23027)
* Move ruby_parser to a non-dev gem as it's a dep of prism [[#23025]](https://github.com/ManageIQ/manageiq/pull/23025)
* Bump manageiq-appliance_console, linux_admin for net-scp fix [[#23014]](https://github.com/ManageIQ/manageiq/pull/23014)
* Fix Renovate PRs [[#23007]](https://github.com/ManageIQ/manageiq/pull/23007)
* Remove generic_ansible_playbook catalog_type from embedded automation manager [[#22999]](https://github.com/ManageIQ/manageiq/pull/22999)
* Fix aggregate_cpu/memory utilization methods for Containers [[#22951]](https://github.com/ManageIQ/manageiq/pull/22951)
* Remove in_my_region calls from audit report [[#22961]](https://github.com/ManageIQ/manageiq/pull/22961)
* Remove controller prefix from RHV delete disk list [[#22944]](https://github.com/ManageIQ/manageiq/pull/22944)
* Update provider generator supports :create/DDFv2 [[#22950]](https://github.com/ManageIQ/manageiq/pull/22950)
* Bump appliance_console to fix evmserverd disabled bug [[#22937]](https://github.com/ManageIQ/manageiq/pull/22937)
* Cleanup Report results pdf title escape [[#22930]](https://github.com/ManageIQ/manageiq/pull/22930)
* Drop needless method put at the module scope [[#22931]](https://github.com/ManageIQ/manageiq/pull/22931)
* Revert "Merge pull request #22901 from jrafanie/drop_default_value_for" [[#22922]](https://github.com/ManageIQ/manageiq/pull/22922)
* Remove tags from entitlement filters from the deleted tag's region [[#22917]](https://github.com/ManageIQ/manageiq/pull/22917)
* Switch to is_podified? check in auditing payload [[#22914]](https://github.com/ManageIQ/manageiq/pull/22914)
* Add rdoc for rails console [[#22899]](https://github.com/ManageIQ/manageiq/pull/22899)
* Don't reject AdvancedSetting#destroy if read-only [[#22857]](https://github.com/ManageIQ/manageiq/pull/22857)
* Refactor inventory syndication to persister [[#22874]](https://github.com/ManageIQ/manageiq/pull/22874)
* Fix DRB dequeue_method spec [[#22875]](https://github.com/ManageIQ/manageiq/pull/22875)
* Fix dashboard missing chart [[#22872]](https://github.com/ManageIQ/manageiq/pull/22872)
* Psych 4 won't allow unpermitted classes by default [[#22861]](https://github.com/ManageIQ/manageiq/pull/22861)
* Add zone_id to provider generator validationDependencies [[#22846]](https://github.com/ManageIQ/manageiq/pull/22846)
* Move require into RSpec defined guard [[#22831]](https://github.com/ManageIQ/manageiq/pull/22831)
* Bump vcr to 6.1 for ruby 3.1 finalizer fix [[#22829]](https://github.com/ManageIQ/manageiq/pull/22829)
* Separate vm store and datastore smartstate scan supports checks [[#22738]](https://github.com/ManageIQ/manageiq/pull/22738)

### Enhancement

* CP4AIOPS-3113 Introduce configurable delimiter for LDAP group names [[#23139]](https://github.com/ManageIQ/manageiq/pull/23139)
* Make ServiceTemplateAnsiblePlaybook create_dialogs public [[#23217]](https://github.com/ManageIQ/manageiq/pull/23217)
* Add a block option to checkout_git_repository [[#23235]](https://github.com/ManageIQ/manageiq/pull/23235)
* Poll more frequently in Ansible::Runner::ResponseAsync#wait [[#23230]](https://github.com/ManageIQ/manageiq/pull/23230)
* Add OpenShift Virtualization vendor types for VMs and hosts [[#23165]](https://github.com/ManageIQ/manageiq/pull/23165)
* Change requeue_phase to have params passed in for time with default value of 10 [[#23175]](https://github.com/ManageIQ/manageiq/pull/23175)
* Use rails 7 cache format as 7 can read either 6 or 7 [[#23210]](https://github.com/ManageIQ/manageiq/pull/23210)
* Upgrade fast_gettext [[#23205]](https://github.com/ManageIQ/manageiq/pull/23205)
* Add Vmware PhotonOS Operating System [[#23188]](https://github.com/ManageIQ/manageiq/pull/23188)
* Drop locale file locations [[#22294]](https://github.com/ManageIQ/manageiq/pull/22294)
* Allow po_to_json from ui classic [[#22438]](https://github.com/ManageIQ/manageiq/pull/22438)
* Update Resource Pool Identifiers and UI for Cloud and Infrastructure Categorization [[#22879]](https://github.com/ManageIQ/manageiq/pull/22879)
* Start all automation runners in AutomationWorker [[#23151]](https://github.com/ManageIQ/manageiq/pull/23151)
* Improve error display when yarn audits fail [[#23137]](https://github.com/ManageIQ/manageiq/pull/23137)
* Rails 7 [[#22873]](https://github.com/ManageIQ/manageiq/pull/22873)
* Run all security tests before failing any one of them [[#23128]](https://github.com/ManageIQ/manageiq/pull/23128)
* Method List dialog [[#23106]](https://github.com/ManageIQ/manageiq/pull/23106)
* Wait for collect_initial to complete on Kubernetes WorkerManagement [[#23097]](https://github.com/ManageIQ/manageiq/pull/23097)
* console methods for running automate and vmware refresh [[#23092]](https://github.com/ManageIQ/manageiq/pull/23092)
* Add has_many for annotations custom attribute each summary page that contains labels [[#23074]](https://github.com/ManageIQ/manageiq/pull/23074)
* Creating environment varaible for TERRAFORM_RUNNER_URL [[#23051]](https://github.com/ManageIQ/manageiq/pull/23051)
* Add a `deliver!` version of `GenericMailer.deliver` [[#23037]](https://github.com/ManageIQ/manageiq/pull/23037)
* Provision workflow [[#23039]](https://github.com/ManageIQ/manageiq/pull/23039)
* Setup Settings constant before the database is connected [[#22853]](https://github.com/ManageIQ/manageiq/pull/22853)
* Supports feature attributes [[#23028]](https://github.com/ManageIQ/manageiq/pull/23028)
* Generalize the product feature for automation manager tagging of repos and credentials [[#22971]](https://github.com/ManageIQ/manageiq/pull/22971)
* statemachine_task_status [[#23021]](https://github.com/ManageIQ/manageiq/pull/23021)
* No longer pass miq_request_id as a dialog parameter [[#23019]](https://github.com/ManageIQ/manageiq/pull/23019)
* Add a GenericMailer method that creates a MiqTask [[#23017]](https://github.com/ManageIQ/manageiq/pull/23017)
* Search feature for provisioning instance and virtual machines [[#22996]](https://github.com/ManageIQ/manageiq/pull/22996)
* Add object_src Content-Security-Policy directive [[#23001]](https://github.com/ManageIQ/manageiq/pull/23001)
* Pluggable credential types [[#22995]](https://github.com/ManageIQ/manageiq/pull/22995)
* Add workflow_dispatch to allow manually triggering monolithic builds [[#22997]](https://github.com/ManageIQ/manageiq/pull/22997)
* Move `GitWorktree#pull` to a public method [[#22986]](https://github.com/ManageIQ/manageiq/pull/22986)
* Allow null values in worker_settings for unit_config_file [[#22981]](https://github.com/ManageIQ/manageiq/pull/22981)
* Seed workflows from plugins' content/workflows [[#22759]](https://github.com/ManageIQ/manageiq/pull/22759)
* Pass request_task_id to to workflows [[#22967]](https://github.com/ManageIQ/manageiq/pull/22967)
* MiqServer#recently_active can handle values in the future [[#22962]](https://github.com/ManageIQ/manageiq/pull/22962)
* Update badges for plugin generator README [[#22963]](https://github.com/ManageIQ/manageiq/pull/22963)
* Add region count to audit reporting [[#22958]](https://github.com/ManageIQ/manageiq/pull/22958)
* Set system_uid for systemd workers [[#22915]](https://github.com/ManageIQ/manageiq/pull/22915)
* Mark non-rails workers as stopped [[#22941]](https://github.com/ManageIQ/manageiq/pull/22941)
* alias evmserverd as manageiq.service [[#22392]](https://github.com/ManageIQ/manageiq/pull/22392)
* Switch to Ruby argument forwarding [[#22925]](https://github.com/ManageIQ/manageiq/pull/22925)
* Update English Translations 2024-02-26T19:52:23Z [[#22839]](https://github.com/ManageIQ/manageiq/pull/22839)
* Pluggable Server Roles [[#22918]](https://github.com/ManageIQ/manageiq/pull/22918)
* Add default_authentication delegates [[#22907]](https://github.com/ManageIQ/manageiq/pull/22907)
* Add url,url= to EMS default_endpoint delegates [[#22906]](https://github.com/ManageIQ/manageiq/pull/22906)
* Improve managed_resources reporting [[#22888]](https://github.com/ManageIQ/manageiq/pull/22888)
* Update authentications supports to reflect update and delete [[#22894]](https://github.com/ManageIQ/manageiq/pull/22894)
* Provide backward compatible way to globally set permitted classes [[#22887]](https://github.com/ManageIQ/manageiq/pull/22887)
* Passing legacy binds was deprecated in 6.1 and removed in 7. [[#22886]](https://github.com/ManageIQ/manageiq/pull/22886)
* Avoid tabnapping exploits for target="_blank" [[#22881]](https://github.com/ManageIQ/manageiq/pull/22881)
* Add a console helper method for enabling roles [[#22858]](https://github.com/ManageIQ/manageiq/pull/22858)
* Use config option in 6.1.7+ instead of an initializer [[#22852]](https://github.com/ManageIQ/manageiq/pull/22852)
* Add tenancy scoping to Switches [[#22843]](https://github.com/ManageIQ/manageiq/pull/22843)
* Add New Product Feature to See Request Logs [[#22701]](https://github.com/ManageIQ/manageiq/pull/22701)
* FixAuth for ConfigurationScript#credentials [[#22824]](https://github.com/ManageIQ/manageiq/pull/22824)
* Re-revert enforce kafka changes [[#22799]](https://github.com/ManageIQ/manageiq/pull/22799)
* There can be only one autoloader: zeitwerk [[#22801]](https://github.com/ManageIQ/manageiq/pull/22801)
* Fix dashboard accessibility issues [[#22807]](https://github.com/ManageIQ/manageiq/pull/22807)
* Mount messaging cert if root not present [[#22773]](https://github.com/ManageIQ/manageiq/pull/22773)
* Seed an initial service catalog [[#22509]](https://github.com/ManageIQ/manageiq/pull/22509)

### Other

* [RADJABOV] Update lockfile after backports [[#23312]](https://github.com/ManageIQ/manageiq/pull/23312)
* Bump rails minimum to 7.0.8.7 for CVEs [[#23311]](https://github.com/ManageIQ/manageiq/pull/23311)
* Pin concurrent-ruby to < 1.3.5 [[#23310]](https://github.com/ManageIQ/manageiq/pull/23310)
* [RADJABOV] Update lockfile after release of manageiq-appliance_console fix [[#23285]](https://github.com/ManageIQ/manageiq/pull/23285)
* Update lockfile after backport of ManageIQ/manageiq-providers-workflows#123 [[#23279]](https://github.com/ManageIQ/manageiq/pull/23279)
* [RADJABOV] Lockdown Ruby version to Ruby 3.3 [[#23274]](https://github.com/ManageIQ/manageiq/pull/23274)
* Update translations based on the last two English changes [[#23269]](https://github.com/ManageIQ/manageiq/pull/23269)
* [RADJABOV] Update lockfile for backport of appliance console in #23139 [[#23270]](https://github.com/ManageIQ/manageiq/pull/23270)
* Update English Translations [[#23233]](https://github.com/ManageIQ/manageiq/pull/23233)
* Add gitignores for rails credentials [[#23263]](https://github.com/ManageIQ/manageiq/pull/23263)
* [RADJABOV] Update lockfile after backports [[#23267]](https://github.com/ManageIQ/manageiq/pull/23267)
* Lock URI to 0.13.x [[#23260]](https://github.com/ManageIQ/manageiq/pull/23260)
* Upgrading ruby to 3.3 [[#23142]](https://github.com/ManageIQ/manageiq/pull/23142)
* [RADJABOV] Update Gemfile.lock.release [[#23258]](https://github.com/ManageIQ/manageiq/pull/23258)
* Fix dialog tag specs [[#23078]](https://github.com/ManageIQ/manageiq/pull/23078)
* Use Rails.application.credentials instead of deprecated secrets [[#23254]](https://github.com/ManageIQ/manageiq/pull/23254)
* Improve allowed_storages filter spec [[#23256]](https://github.com/ManageIQ/manageiq/pull/23256)
* Fix deprecations using activesupport deprecation [[#23249]](https://github.com/ManageIQ/manageiq/pull/23249)
* Fix positional argument deprecations with ERB.new [[#23250]](https://github.com/ManageIQ/manageiq/pull/23250)
* Rails 4? Remove long since deprecated bridge monkey patch [[#23247]](https://github.com/ManageIQ/manageiq/pull/23247)
* Upgrade rspec-rails for rails 7.1 support [[#23245]](https://github.com/ManageIQ/manageiq/pull/23245)
* Update lockfile after backport of #23236 [[#23243]](https://github.com/ManageIQ/manageiq/pull/23243)
* Update rails to 7.0.8.5 for CVEs [[#23236]](https://github.com/ManageIQ/manageiq/pull/23236)
* upgrade Factorybot to ruby3.3 friendly version [[#23234]](https://github.com/ManageIQ/manageiq/pull/23234)
* Remove deletion of data/git_repos for EmbeddedAnsible tests [[#22960]](https://github.com/ManageIQ/manageiq/pull/22960)
* DRb has been extracted from stdlib to a gem [[#23232]](https://github.com/ManageIQ/manageiq/pull/23232)
* Fix issue where test leaves a dirty git tree [[#23231]](https://github.com/ManageIQ/manageiq/pull/23231)
* Update English Translations [[#23193]](https://github.com/ManageIQ/manageiq/pull/23193)
* remove unused tota11y.js reference [[#23227]](https://github.com/ManageIQ/manageiq/pull/23227)
* [RADJABOV] Bump lockfile gems [[#23226]](https://github.com/ManageIQ/manageiq/pull/23226)
* Bump puma to 6.4.3 for CVE-2024-45614 [[#23220]](https://github.com/ManageIQ/manageiq/pull/23220)
* Remove sporadic fix_auth spec pt2 [[#23216]](https://github.com/ManageIQ/manageiq/pull/23216)
* simplify fix_auth tests [[#23212]](https://github.com/ManageIQ/manageiq/pull/23212)
* Prevent bundler 2.5.19 [[#23206]](https://github.com/ManageIQ/manageiq/pull/23206)
* Fix evm_application_spec parallel spec failure [[#23198]](https://github.com/ManageIQ/manageiq/pull/23198)
* Unify Worker Environment Variables systemd/k8s [[#23197]](https://github.com/ManageIQ/manageiq/pull/23197)
* Gemfile supports ruby 3.3 [[#23204]](https://github.com/ManageIQ/manageiq/pull/23204)
* spec: Support ruby 3.1 and 3.3 error message formats [[#23203]](https://github.com/ManageIQ/manageiq/pull/23203)
* Replace Container ENV var EMS_IDS->_ID [[#23195]](https://github.com/ManageIQ/manageiq/pull/23195)
* update_all minor changes  [[#23192]](https://github.com/ManageIQ/manageiq/pull/23192)
* Updated translations after removing the English file comments [[#23189]](https://github.com/ManageIQ/manageiq/pull/23189)
* Use Kernel system exception handling [[#23186]](https://github.com/ManageIQ/manageiq/pull/23186)
* Configure brakeman to use prism [[#23185]](https://github.com/ManageIQ/manageiq/pull/23185)
* Upgrade brakeman to v6 [[#23124]](https://github.com/ManageIQ/manageiq/pull/23124)
* Ignore brakeman progress on CI (non-tty) [[#23181]](https://github.com/ManageIQ/manageiq/pull/23181)
* Drop rss remnants [[#23180]](https://github.com/ManageIQ/manageiq/pull/23180)
* [RADJABOV] Update git shas in Gemfile.lock.release [[#23179]](https://github.com/ManageIQ/manageiq/pull/23179)
* Update translations based on the August 30th English strings [[#23174]](https://github.com/ManageIQ/manageiq/pull/23174)
* Opt-in to the new rails connection handling [[#23171]](https://github.com/ManageIQ/manageiq/pull/23171)
* Update English Translations 2024-08-30T21:13:15Z [[#23055]](https://github.com/ManageIQ/manageiq/pull/23055)
* [RADJABOV] Update lockfile after backport of ManageIQ/manageiq-gems-pending#589 [[#23166]](https://github.com/ManageIQ/manageiq/pull/23166)
* Drop Supports' unsupports variable [[#22898]](https://github.com/ManageIQ/manageiq/pull/22898)
* [RADJABOV]  Update lockfile after backport of ManageIQ/manageiq-providers-workflows#113 [[#23162]](https://github.com/ManageIQ/manageiq/pull/23162)
* Add ansible-runner spec that ensures roles/requirements.yml is honored [[#23159]](https://github.com/ManageIQ/manageiq/pull/23159)
* Add rake task for rebuilding the yarn audit pending list [[#23129]](https://github.com/ManageIQ/manageiq/pull/23129)
* Minor rubocop updates to Vmdb::Plugins [[#23154]](https://github.com/ManageIQ/manageiq/pull/23154)
* [RADJABOV] Update Gemfile.lock.release after merge of master into radjabov [[#23150]](https://github.com/ManageIQ/manageiq/pull/23150)
* Set the minimum appliance_console to 9.1.1 [[#23143]](https://github.com/ManageIQ/manageiq/pull/23143)
* Use Rails 7 way to set yaml permitted classes [[#23133]](https://github.com/ManageIQ/manageiq/pull/23133)
* More runner vault specs [[#23130]](https://github.com/ManageIQ/manageiq/pull/23130)
* Use ruby 3.1 for code coverage [[#23126]](https://github.com/ManageIQ/manageiq/pull/23126)
* Move security test suite code out of rake and into an .rb file [[#23122]](https://github.com/ManageIQ/manageiq/pull/23122)
* Drop eth0 from MiqServer.get_network_information [[#23118]](https://github.com/ManageIQ/manageiq/pull/23118)
* Expose the new yarn_audit task via rake -T [[#23121]](https://github.com/ManageIQ/manageiq/pull/23121)
* Add more ansible runner specs [[#23091]](https://github.com/ManageIQ/manageiq/pull/23091)
* Move to AS::DescendantsTracker.subclasses [[#23108]](https://github.com/ManageIQ/manageiq/pull/23108)
* Worker EMS_ID can no longer be an array [[#23109]](https://github.com/ManageIQ/manageiq/pull/23109)
* Virtual attribute specs [[#23099]](https://github.com/ManageIQ/manageiq/pull/23099)
* Rails7 friendly require during initializers [[#23102]](https://github.com/ManageIQ/manageiq/pull/23102)
* Use MiqExpression in condition_spec.rb [[#23101]](https://github.com/ManageIQ/manageiq/pull/23101)
* Add a security test that runs yarn npm audit [[#23098]](https://github.com/ManageIQ/manageiq/pull/23098)
* Use default_value_for 4.0 with rails 7+ support [[#23093]](https://github.com/ManageIQ/manageiq/pull/23093)
* Don't attempt to load SettingsChange too early [[#23096]](https://github.com/ManageIQ/manageiq/pull/23096)
* Remove calls to supports and supports back to back [[#23077]](https://github.com/ManageIQ/manageiq/pull/23077)
* [RADJABOV] Update lockfile after backport of ManageIQ/manageiq-providers-vmware#916 [[#23082]](https://github.com/ManageIQ/manageiq/pull/23082)
* [RADJABOV] Update lockfile after backport of #23071 [[#23073]](https://github.com/ManageIQ/manageiq/pull/23073)
* Bump manageiq-smartstate to 0.10.0 [[#23071]](https://github.com/ManageIQ/manageiq/pull/23071)
* Postgres 13 is the absolute minimum with Radjabov [[#23065]](https://github.com/ManageIQ/manageiq/pull/23065)
* comments on a Switch [[#23006]](https://github.com/ManageIQ/manageiq/pull/23006)
* Update Yarn to v4.3.1 [[#23072]](https://github.com/ManageIQ/manageiq/pull/23072)
* Update Yarn to v4.3.0 [[#23064]](https://github.com/ManageIQ/manageiq/pull/23064)
* [RADJABOV] Update lockfile after backport of #23058 [[#23059]](https://github.com/ManageIQ/manageiq/pull/23059)
* Bump to 6.1.7.8 for CVE-2024-28103 fix [[#23058]](https://github.com/ManageIQ/manageiq/pull/23058)
* May 31st translations [[#23057]](https://github.com/ManageIQ/manageiq/pull/23057)
* Update English Translations 2024-05-30T13:06:20Z [[#22969]](https://github.com/ManageIQ/manageiq/pull/22969)
* Fail providers on seeding failure [[#23048]](https://github.com/ManageIQ/manageiq/pull/23048)
* service reconfigure task needs a default request type [[#23042]](https://github.com/ManageIQ/manageiq/pull/23042)
* [RADJABOV] Update Gemfile.lock.release after merge of master into radjabov [[#23046]](https://github.com/ManageIQ/manageiq/pull/23046)
* Update yarn to v4.2.2 [[#23033]](https://github.com/ManageIQ/manageiq/pull/23033)
* Update yarn to stable v4.2.1 [[#23018]](https://github.com/ManageIQ/manageiq/pull/23018)
* Replace RipperRubyParser with Prism for DescendantLoader [[#23008]](https://github.com/ManageIQ/manageiq/pull/23008)
* Add Embedded Terraform plugin [[#22964]](https://github.com/ManageIQ/manageiq/pull/22964)
* Update yarn to stable v4.1.1 [[#23012]](https://github.com/ManageIQ/manageiq/pull/23012)
* Add referrer_policy to security headers to fix DAST scan [[#23004]](https://github.com/ManageIQ/manageiq/pull/23004)
* use hash.fetch instead of key? ? : [[#22998]](https://github.com/ManageIQ/manageiq/pull/22998)
* Fix supports_helper stub_supports to handle unsupported_reason [[#22976]](https://github.com/ManageIQ/manageiq/pull/22976)
* Update OpenSSF Scorecard link to an actual UI [[#22993]](https://github.com/ManageIQ/manageiq/pull/22993)
* Drop supports_feature? methods [[#22883]](https://github.com/ManageIQ/manageiq/pull/22883)
* Add a generic EvmSpecHelper.add_role [[#22959]](https://github.com/ManageIQ/manageiq/pull/22959)
* Update English Translations 2024-03-08T10:33:43Z [[#22946]](https://github.com/ManageIQ/manageiq/pull/22946)
* Remove return value sync_workers/sync_starting_workers [[#22942]](https://github.com/ManageIQ/manageiq/pull/22942)
* Add badge for CNCF Landscape [[#22940]](https://github.com/ManageIQ/manageiq/pull/22940)
* Remove `Vmdb::Logger.progname_from_file` [[#22939]](https://github.com/ManageIQ/manageiq/pull/22939)
* Rubocop obvious cops [[#22924]](https://github.com/ManageIQ/manageiq/pull/22924)
* Fix Socket.gethostbyname deprecation warning [[#22916]](https://github.com/ManageIQ/manageiq/pull/22916)
* Updated translations based on english #22839 [[#22934]](https://github.com/ManageIQ/manageiq/pull/22934)
* Update to manageiq-appliance_console 9.0 [[#22932]](https://github.com/ManageIQ/manageiq/pull/22932)
* Bump yard to >=0.9.36 for CVE-2024-27285 [[#22933]](https://github.com/ManageIQ/manageiq/pull/22933)
* Remove HasInfra/MonitoringManagerMixin from core [[#22926]](https://github.com/ManageIQ/manageiq/pull/22926)
* Update codeclimate channel to the latest in manageiq-style [[#22928]](https://github.com/ManageIQ/manageiq/pull/22928)
* Update to v6 to work with a change in the github API [[#22927]](https://github.com/ManageIQ/manageiq/pull/22927)
* Replace "some" default_value_for usage [[#22901]](https://github.com/ManageIQ/manageiq/pull/22901)
* Bump manageiq-style minimum to 1.5.0 [[#22920]](https://github.com/ManageIQ/manageiq/pull/22920)
* [RADJABOV] Test radjabov with ruby 3.1 [[#22912]](https://github.com/ManageIQ/manageiq/pull/22912)
* define supports :action [[#22908]](https://github.com/ManageIQ/manageiq/pull/22908)
* Remove CVE-2024-26143 as rails 6.1 is not vulnerable [[#22913]](https://github.com/ManageIQ/manageiq/pull/22913)
* Fix monolith build for EL9 [[#22911]](https://github.com/ManageIQ/manageiq/pull/22911)
* Force rails 6.1.7.7 minimum version [[#22910]](https://github.com/ManageIQ/manageiq/pull/22910)
* Temporarily ignore non-critical CVE as we upgrade to rails 7 [[#22909]](https://github.com/ManageIQ/manageiq/pull/22909)
* transition supports_orderable? to support?(:order) [[#22902]](https://github.com/ManageIQ/manageiq/pull/22902)
* Only run load_subclasses after app is initialized [[#22904]](https://github.com/ManageIQ/manageiq/pull/22904)
* Update manageiq-smartstate to v0.9.0 [[#22903]](https://github.com/ManageIQ/manageiq/pull/22903)
* Rails 7 removed clear_association_cache [[#22885]](https://github.com/ManageIQ/manageiq/pull/22885)
* Vm.supports returns strings [[#22893]](https://github.com/ManageIQ/manageiq/pull/22893)
* Set inventory refresh minimum version to support rails 7 [[#22892]](https://github.com/ManageIQ/manageiq/pull/22892)
* Bump appliance_console minimum to 8.1.0 [[#22889]](https://github.com/ManageIQ/manageiq/pull/22889)
* Deprecate and remove usage of include_concern and require_nested [[#22854]](https://github.com/ManageIQ/manageiq/pull/22854)
* connection_config was removed in rails 7 [[#22884]](https://github.com/ManageIQ/manageiq/pull/22884)
* Psych 3.1 is required since we assert safe_load accepts kwargs [[#22878]](https://github.com/ManageIQ/manageiq/pull/22878)
* Clear messaging_client between specs [[#22876]](https://github.com/ManageIQ/manageiq/pull/22876)
* BinaryBlob was changed in #22861 do this check, so use it [[#22866]](https://github.com/ManageIQ/manageiq/pull/22866)
* Update GHA versions [[#22860]](https://github.com/ManageIQ/manageiq/pull/22860)
* Drop PR template after merge of ManageIQ/.github#7 [[#22856]](https://github.com/ManageIQ/manageiq/pull/22856)
* Ruby31 - Use ruby 3.1 in test and production [[#22808]](https://github.com/ManageIQ/manageiq/pull/22808)
* Bump qpid_proton to 0.37.0 [[#22271]](https://github.com/ManageIQ/manageiq/pull/22271)
* Bump puma to address CVE-2024-21647 [[#22840]](https://github.com/ManageIQ/manageiq/pull/22840)
* Updated translations based on English changes from core 22789 [[#22834]](https://github.com/ManageIQ/manageiq/pull/22834)
* Fix test rake task indentation [[#22832]](https://github.com/ManageIQ/manageiq/pull/22832)
* Add back parallel_tests [[#22830]](https://github.com/ManageIQ/manageiq/pull/22830)
* Update English Translations 2023-12-26T17:22:29Z [[#22789]](https://github.com/ManageIQ/manageiq/pull/22789)
* comment the endpoint_created/destroyed callbacks [[#22713]](https://github.com/ManageIQ/manageiq/pull/22713)
* Bump manageiq-messaging to 1.4.1 [[#22822]](https://github.com/ManageIQ/manageiq/pull/22822)
* Use DDF style parameters for Host verify_credentials [[#22819]](https://github.com/ManageIQ/manageiq/pull/22819)
* Support Ruby 3.1 [[#22698]](https://github.com/ManageIQ/manageiq/pull/22698)
* Bump manageiq-loggers to v1.1.1 [[#22814]](https://github.com/ManageIQ/manageiq/pull/22814)
* Run apt-get update before install in bin/before_install [[#22809]](https://github.com/ManageIQ/manageiq/pull/22809)


## <i class="fa-brands fa-github"></i> [ManageIQ/amazon_ssa_support](https://github.com/ManageIQ/amazon_ssa_support/compare/quinteros-2.2...radjabov-1)

### Bug

* Require active_support/deprecation and active_support/deprecator [[#125]](https://github.com/ManageIQ/amazon_ssa_support/pull/125)

### Other

* [RADJABOV] Lockdown Ruby version to Ruby 3.3 [[#129]](https://github.com/ManageIQ/amazon_ssa_support/pull/129)
* Test with Ruby 3.1 and 3.3 [[#128]](https://github.com/ManageIQ/amazon_ssa_support/pull/128)
* Add ActiveSupport versions into the test matrix [[#126]](https://github.com/ManageIQ/amazon_ssa_support/pull/126)
* Update paambaati/codeclimate-action action to v9 [[#123]](https://github.com/ManageIQ/amazon_ssa_support/pull/123)
* Use ruby 3.1 for code coverage [[#119]](https://github.com/ManageIQ/amazon_ssa_support/pull/119)
* Update paambaati/codeclimate-action action to v8 [[#117]](https://github.com/ManageIQ/amazon_ssa_support/pull/117)
* Update paambaati/codeclimate-action action to v6 [[#115]](https://github.com/ManageIQ/amazon_ssa_support/pull/115)
* Configure Renovate [[#95]](https://github.com/ManageIQ/amazon_ssa_support/pull/95)
* Update codeclimate channel to the latest in manageiq-style [[#109]](https://github.com/ManageIQ/amazon_ssa_support/pull/109)
* Test with ruby 3.1 and 3.0 [[#108]](https://github.com/ManageIQ/amazon_ssa_support/pull/108)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-api](https://github.com/ManageIQ/manageiq-api/compare/quinteros-2.2...radjabov-1)

### Bug

* Fix Host verify_credentials_task password expectation [[#1271]](https://github.com/ManageIQ/manageiq-api/pull/1271)
* Fix CloudNetworks spec with empty including() [[#1267]](https://github.com/ManageIQ/manageiq-api/pull/1267)
* Query metric rollups using start_date derived from the first rollup [[#1265]](https://github.com/ManageIQ/manageiq-api/pull/1265)
* Add stub_supports/supports_not for VM Scan specs [[#1245]](https://github.com/ManageIQ/manageiq-api/pull/1245)

### Enhancement

* Use pluggable credential types method call [[#1259]](https://github.com/ManageIQ/manageiq-api/pull/1259)
* add /api/providers/#/metric_rollups [[#1258]](https://github.com/ManageIQ/manageiq-api/pull/1258)
* Automatically generate an OpenApi specification [[#945]](https://github.com/ManageIQ/manageiq-api/pull/945)
* loading is not needed with zeitwerk autoloader [[#1243]](https://github.com/ManageIQ/manageiq-api/pull/1243)

### Other

* [RADJABOV] Lockdown Ruby version to Ruby 3.3 [[#1274]](https://github.com/ManageIQ/manageiq-api/pull/1274)
* Testing with ruby 3.2, 3.3 [[#1270]](https://github.com/ManageIQ/manageiq-api/pull/1270)
* Fix test to match dropped rss features [[#1269]](https://github.com/ManageIQ/manageiq-api/pull/1269)
* Update paambaati/codeclimate-action action to v9 [[#1266]](https://github.com/ManageIQ/manageiq-api/pull/1266)
* Use ruby 3.1 for code coverage [[#1264]](https://github.com/ManageIQ/manageiq-api/pull/1264)
*  Rails7 fixes [[#1263]](https://github.com/ManageIQ/manageiq-api/pull/1263)
* Update paambaati/codeclimate-action action to v8 [[#1261]](https://github.com/ManageIQ/manageiq-api/pull/1261)
* Update paambaati/codeclimate-action action to v6 [[#1260]](https://github.com/ManageIQ/manageiq-api/pull/1260)
* Use standard SupportsFeatureMixin [[#1257]](https://github.com/ManageIQ/manageiq-api/pull/1257)
* test sub-type search for basic resource listing (GET index) [[#1256]](https://github.com/ManageIQ/manageiq-api/pull/1256)
* Update manageiq/memcached Docker tag to v1.6 [[#1254]](https://github.com/ManageIQ/manageiq-api/pull/1254)
* Configure Renovate [[#1229]](https://github.com/ManageIQ/manageiq-api/pull/1229)
* Drop codeclimate-test-reporter [[#1251]](https://github.com/ManageIQ/manageiq-api/pull/1251)
* Update codeclimate channel to the latest in manageiq-style [[#1252]](https://github.com/ManageIQ/manageiq-api/pull/1252)
* [RADJABOV] Test radjabov with ruby 3.1 [[#1250]](https://github.com/ManageIQ/manageiq-api/pull/1250)
* Test with ruby 3.1 and 3.0 [[#1247]](https://github.com/ManageIQ/manageiq-api/pull/1247)
* Use standard create/update/delete features for Authentications [[#1220]](https://github.com/ManageIQ/manageiq-api/pull/1220)
* Drop include_concern [[#1246]](https://github.com/ManageIQ/manageiq-api/pull/1246)
* Drop legacy Host credentials payload, replaced by DDF params [[#1244]](https://github.com/ManageIQ/manageiq-api/pull/1244)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-appliance](https://github.com/ManageIQ/manageiq-appliance/compare/quinteros-2.2...radjabov-1)

### Bug

* CP4AIOPS-3113 Pass authentication group delimiter to rails [[#389]](https://github.com/ManageIQ/manageiq-appliance/pull/389)
* Add a manageiq-podman-cleanup oneshot service [[#390]](https://github.com/ManageIQ/manageiq-appliance/pull/390)
* Add sudo rules for LVM commands for manageiq user [[#387]](https://github.com/ManageIQ/manageiq-appliance/pull/387)
* Move TERRAFORM_RUNNER_URL to appliance specific properties [[#386]](https://github.com/ManageIQ/manageiq-appliance/pull/386)
* Rework Kafka health check in manageiq-messaging-ready [[#384]](https://github.com/ManageIQ/manageiq-appliance/pull/384)
* Cleanup unused scripts now that we're on EL9 [[#381]](https://github.com/ManageIQ/manageiq-appliance/pull/381)

### Enhancement

* default encryption to scram-sha-256 [[#388]](https://github.com/ManageIQ/manageiq-appliance/pull/388)
* Set the OPENTOFU_RUNNER_URL ENV var [[#385]](https://github.com/ManageIQ/manageiq-appliance/pull/385)
* Initialize Kafka topics [[#378]](https://github.com/ManageIQ/manageiq-appliance/pull/378)

### Other

* Configure Renovate [[#379]](https://github.com/ManageIQ/manageiq-appliance/pull/379)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-appliance-build](https://github.com/ManageIQ/manageiq-appliance-build/compare/quinteros-2.2...radjabov-1)

### Bug

* GCE appliances require google-guest-agent [[#574]](https://github.com/ManageIQ/manageiq-appliance-build/pull/574)
* Stop using legacy network interface names (eth0) [[#573]](https://github.com/ManageIQ/manageiq-appliance-build/pull/573)
* Remove root from the cockpit disallowed-users list [[#565]](https://github.com/ManageIQ/manageiq-appliance-build/pull/565)

### Enhancement

* Set ruby stream to 3.3 [[#578]](https://github.com/ManageIQ/manageiq-appliance-build/pull/578)
* Enable the serial console for use in kubevirt [[#570]](https://github.com/ManageIQ/manageiq-appliance-build/pull/570)
* Misc updates for CentOS Stream 9 hosts [[#569]](https://github.com/ManageIQ/manageiq-appliance-build/pull/569)
* Add appliance smoke tests [[#568]](https://github.com/ManageIQ/manageiq-appliance-build/pull/568)

### Other

* [RADJABOV] Lockdown Ruby version to Ruby 3.3 [[#580]](https://github.com/ManageIQ/manageiq-appliance-build/pull/580)
* test with ruby 3.3 [[#577]](https://github.com/ManageIQ/manageiq-appliance-build/pull/577)
* Configure Renovate [[#549]](https://github.com/ManageIQ/manageiq-appliance-build/pull/549)
* Upgrade to el9 [[#563]](https://github.com/ManageIQ/manageiq-appliance-build/pull/563)
* Use el8/9 epel qpid proton 0.37.0+ [[#559]](https://github.com/ManageIQ/manageiq-appliance-build/pull/559)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-automation_engine](https://github.com/ManageIQ/manageiq-automation_engine/compare/quinteros-2.2...radjabov-1)

### Bug

* Fix automation array values [[#545]](https://github.com/ManageIQ/manageiq-automation_engine/pull/545)
* Use Ansible Workflow/Job Template Common Parent Class [[#557]](https://github.com/ManageIQ/manageiq-automation_engine/pull/557)
* Permit yaml safe_load of aliases in automate ruby methods [[#554]](https://github.com/ManageIQ/manageiq-automation_engine/pull/554)
* Use load when loading static service models [[#536]](https://github.com/ManageIQ/manageiq-automation_engine/pull/536)

### Enhancement

* Expose Vmware::Infra::Vm#set_description [[#561]](https://github.com/ManageIQ/manageiq-automation_engine/pull/561)
* Avoid Fixnum [[#558]](https://github.com/ManageIQ/manageiq-automation_engine/pull/558)
* GenericMailer async deliver uses deliver! [[#548]](https://github.com/ManageIQ/manageiq-automation_engine/pull/548)
* permit_concurrent_loads is not needed with zeitwerk autoloader [[#537]](https://github.com/ManageIQ/manageiq-automation_engine/pull/537)

### Other

* [RADJABOV] Lockdown Ruby version to Ruby 3.3 [[#563]](https://github.com/ManageIQ/manageiq-automation_engine/pull/563)
* Testing with ruby 3.2, 3.3 [[#559]](https://github.com/ManageIQ/manageiq-automation_engine/pull/559)
* Update paambaati/codeclimate-action action to v9 [[#556]](https://github.com/ManageIQ/manageiq-automation_engine/pull/556)
* Use ruby 3.1 for code coverage [[#553]](https://github.com/ManageIQ/manageiq-automation_engine/pull/553)
* Update paambaati/codeclimate-action action to v8 [[#550]](https://github.com/ManageIQ/manageiq-automation_engine/pull/550)
* transfer state_machine_task_status from automate to core [[#547]](https://github.com/ManageIQ/manageiq-automation_engine/pull/547)
* Update paambaati/codeclimate-action action to v6 [[#546]](https://github.com/ManageIQ/manageiq-automation_engine/pull/546)
* drop supports_ methods [[#542]](https://github.com/ManageIQ/manageiq-automation_engine/pull/542)
* Configure Renovate [[#527]](https://github.com/ManageIQ/manageiq-automation_engine/pull/527)
* Update codeclimate channel to the latest in manageiq-style [[#543]](https://github.com/ManageIQ/manageiq-automation_engine/pull/543)
* [RADJABOV] Test radjabov with ruby 3.1 [[#541]](https://github.com/ManageIQ/manageiq-automation_engine/pull/541)
* Test with ruby 3.1 and 3.0 [[#540]](https://github.com/ManageIQ/manageiq-automation_engine/pull/540)
* require logger to avoid autoload during rails boot [[#539]](https://github.com/ManageIQ/manageiq-automation_engine/pull/539)
* Allow StateVarHash to YAML.load from runtime instantiate [[#538]](https://github.com/ManageIQ/manageiq-automation_engine/pull/538)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-consumption](https://github.com/ManageIQ/manageiq-consumption/compare/quinteros-2.2...radjabov-1)

### Bug

* Rails 7 - cpu_usage_rate_average should be a numeric, not a string. [[#220]](https://github.com/ManageIQ/manageiq-consumption/pull/220)

### Other

* [RADJABOV] Lockdown Ruby version to Ruby 3.3 [[#225]](https://github.com/ManageIQ/manageiq-consumption/pull/225)
* Testing with ruby 3.2, 3.3 [[#223]](https://github.com/ManageIQ/manageiq-consumption/pull/223)
* Update paambaati/codeclimate-action action to v9 [[#222]](https://github.com/ManageIQ/manageiq-consumption/pull/222)
* Use ruby 3.1 for code coverage [[#221]](https://github.com/ManageIQ/manageiq-consumption/pull/221)
* Update paambaati/codeclimate-action action to v8 [[#219]](https://github.com/ManageIQ/manageiq-consumption/pull/219)
* Update paambaati/codeclimate-action action to v6 [[#218]](https://github.com/ManageIQ/manageiq-consumption/pull/218)
* Configure Renovate [[#206]](https://github.com/ManageIQ/manageiq-consumption/pull/206)
* Update codeclimate channel to the latest in manageiq-style [[#216]](https://github.com/ManageIQ/manageiq-consumption/pull/216)
* [RADJABOV] Test radjabov with ruby 3.1 [[#215]](https://github.com/ManageIQ/manageiq-consumption/pull/215)
* Test with ruby 3.1 and 3.0 [[#214]](https://github.com/ManageIQ/manageiq-consumption/pull/214)
* Drop include_concern [[#213]](https://github.com/ManageIQ/manageiq-consumption/pull/213)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-content](https://github.com/ManageIQ/manageiq-content/compare/quinteros-2.2...radjabov-1)

### Bug

* Change email Title to Subject [[#751]](https://github.com/ManageIQ/manageiq-content/pull/751)
* Fix Parameters missing `.$` in email.asl [[#745]](https://github.com/ManageIQ/manageiq-content/pull/745)

### Enhancement

* Add Kubevirt/OSV VM events [[#755]](https://github.com/ManageIQ/manageiq-content/pull/755)
* add small med large ASL workflow [[#750]](https://github.com/ManageIQ/manageiq-content/pull/750)
* Reorganize out of the box workflows [[#748]](https://github.com/ManageIQ/manageiq-content/pull/748)
* Add a simple email ASL workflow [[#744]](https://github.com/ManageIQ/manageiq-content/pull/744)

### Other

* [RADJABOV] Lockdown Ruby version to Ruby 3.3 [[#756]](https://github.com/ManageIQ/manageiq-content/pull/756)
* Testing with ruby 3.2, 3.3 [[#754]](https://github.com/ManageIQ/manageiq-content/pull/754)
* Update paambaati/codeclimate-action action to v9 [[#753]](https://github.com/ManageIQ/manageiq-content/pull/753)
* Use ruby 3.1 for code coverage [[#752]](https://github.com/ManageIQ/manageiq-content/pull/752)
* Update paambaati/codeclimate-action action to v8 [[#749]](https://github.com/ManageIQ/manageiq-content/pull/749)
* workflow to provision [[#746]](https://github.com/ManageIQ/manageiq-content/pull/746)
* Update paambaati/codeclimate-action action to v6 [[#743]](https://github.com/ManageIQ/manageiq-content/pull/743)
* Configure Renovate [[#732]](https://github.com/ManageIQ/manageiq-content/pull/732)
* Update codeclimate channel to the latest in manageiq-style [[#741]](https://github.com/ManageIQ/manageiq-content/pull/741)
* Test with ruby 3.1 and 3.0 [[#740]](https://github.com/ManageIQ/manageiq-content/pull/740)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-decorators](https://github.com/ManageIQ/manageiq-decorators/compare/quinteros-2.2...radjabov-1)

### Bug

* Remove usage of eval functions in ui-classic [[#99]](https://github.com/ManageIQ/manageiq-decorators/pull/99)

### Enhancement

* Add PhotonOS icon [[#107]](https://github.com/ManageIQ/manageiq-decorators/pull/107)

### Other

* [RADJABOV] Lockdown Ruby version to Ruby 3.3 [[#110]](https://github.com/ManageIQ/manageiq-decorators/pull/110)
* Testing with ruby 3.3 [[#109]](https://github.com/ManageIQ/manageiq-decorators/pull/109)
* Testing with ruby 3.2, 3.3 [[#108]](https://github.com/ManageIQ/manageiq-decorators/pull/108)
* Update paambaati/codeclimate-action action to v9 [[#106]](https://github.com/ManageIQ/manageiq-decorators/pull/106)
* Use ruby 3.1 for code coverage [[#105]](https://github.com/ManageIQ/manageiq-decorators/pull/105)
* Update paambaati/codeclimate-action action to v8 [[#104]](https://github.com/ManageIQ/manageiq-decorators/pull/104)
* Update paambaati/codeclimate-action action to v6 [[#103]](https://github.com/ManageIQ/manageiq-decorators/pull/103)
* Configure Renovate [[#90]](https://github.com/ManageIQ/manageiq-decorators/pull/90)
* Update codeclimate channel to the latest in manageiq-style [[#101]](https://github.com/ManageIQ/manageiq-decorators/pull/101)
* [RADJABOV] Test radjabov with ruby 3.1 [[#100]](https://github.com/ManageIQ/manageiq-decorators/pull/100)
* Test with ruby 3.1 and 3.0 [[#98]](https://github.com/ManageIQ/manageiq-decorators/pull/98)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-documentation](https://github.com/ManageIQ/manageiq-documentation/compare/quinteros-2.2...radjabov-1)

### Bug

* Fix image URLs + minor edits for text to appear correctly on line [[#1837]](https://github.com/ManageIQ/manageiq-documentation/pull/1837)
* [RADJABOV] Fix link references [[#1830]](https://github.com/ManageIQ/manageiq-documentation/pull/1830)
* Fix issue with invalid yaml [[#1826]](https://github.com/ManageIQ/manageiq-documentation/pull/1826)
* QA Minor changes for ASL [[#1819]](https://github.com/ManageIQ/manageiq-documentation/pull/1819)
* Fixed ToC issue [[#1813]](https://github.com/ManageIQ/manageiq-documentation/pull/1813)
* Fix indenting issue in site_menu [[#1812]](https://github.com/ManageIQ/manageiq-documentation/pull/1812)
* Minor changes [[#1799]](https://github.com/ManageIQ/manageiq-documentation/pull/1799)
* QA Updated KubeVirt references [[#1797]](https://github.com/ManageIQ/manageiq-documentation/pull/1797)
* Radjabov appliance upgrade [[#1783]](https://github.com/ManageIQ/manageiq-documentation/pull/1783)
* QA Updated images. [[#1785]](https://github.com/ManageIQ/manageiq-documentation/pull/1785)
* Update openshift provider ClusterRole API instructions [[#1776]](https://github.com/ManageIQ/manageiq-documentation/pull/1776)

### Enhancement

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
* Differentiate between Kubevirt and OpenShift Virtualization [[#1815]](https://github.com/ManageIQ/manageiq-documentation/pull/1815)
* Floe features not yet supported [[#1817]](https://github.com/ManageIQ/manageiq-documentation/pull/1817)
* Updated ToC for entire ManageIQ + added already existing topics within ToC [[#1806]](https://github.com/ManageIQ/manageiq-documentation/pull/1806)
* Update embedded_workflows.md [[#1808]](https://github.com/ManageIQ/manageiq-documentation/pull/1808)
* Minor updates to Configuation and Initial Login includes [[#1805]](https://github.com/ManageIQ/manageiq-documentation/pull/1805)
* Update OIDC group mapper config [[#1804]](https://github.com/ManageIQ/manageiq-documentation/pull/1804)
* Mention optional messaging disk in requirements [[#1798]](https://github.com/ManageIQ/manageiq-documentation/pull/1798)
* QA Update installation.md [[#1795]](https://github.com/ManageIQ/manageiq-documentation/pull/1795)
* Minor updates to product.yml and variable usage [[#1796]](https://github.com/ManageIQ/manageiq-documentation/pull/1796)
* List more custom image references in the example [[#1794]](https://github.com/ManageIQ/manageiq-documentation/pull/1794)
* QA opentofu provider [[#1793]](https://github.com/ManageIQ/manageiq-documentation/pull/1793)
* QA Added provisioning content [[#1791]](https://github.com/ManageIQ/manageiq-documentation/pull/1791)
* Enabling Inventory Syndication [[#1788]](https://github.com/ManageIQ/manageiq-documentation/pull/1788)
* Update adding disabling cloud provider regions [[#1787]](https://github.com/ManageIQ/manageiq-documentation/pull/1787)
* LVM guidelines for ISCSI/FC SmartState Analysis [[#1782]](https://github.com/ManageIQ/manageiq-documentation/pull/1782)
* Revert #1780 and specify adding hostname to /etc/hosts [[#1781]](https://github.com/ManageIQ/manageiq-documentation/pull/1781)
* Specify internal FQDN for messaging hostname [[#1780]](https://github.com/ManageIQ/manageiq-documentation/pull/1780)
* Messaging hostname guideline updates [[#1778]](https://github.com/ManageIQ/manageiq-documentation/pull/1778)
* Messaging configuration hostname guidelines [[#1777]](https://github.com/ManageIQ/manageiq-documentation/pull/1777)
* QA Update services.md to add the password paramater [[#1775]](https://github.com/ManageIQ/manageiq-documentation/pull/1775)
* Strimzi installation on Kubernetes [[#1769]](https://github.com/ManageIQ/manageiq-documentation/pull/1769)
* Volume snapshot to Instance -  not enabled on IM on Z [[#1770]](https://github.com/ManageIQ/manageiq-documentation/pull/1770)

### Other

* QA Improved content for add azure microsoft insights provider instructions [[#1831]](https://github.com/ManageIQ/manageiq-documentation/pull/1831)
* Upgrade Ruby to 3.3 and jekyll to 4.3 [[#1828]](https://github.com/ManageIQ/manageiq-documentation/pull/1828)
* QA Removed SCVMM provider [[#1816]](https://github.com/ManageIQ/manageiq-documentation/pull/1816)
* Update embedded_workflows.md [[#1810]](https://github.com/ManageIQ/manageiq-documentation/pull/1810)
* memo on Map and Parallel [[#1809]](https://github.com/ManageIQ/manageiq-documentation/pull/1809)
* Add documentation for appliance_console_cli messaging config [[#1789]](https://github.com/ManageIQ/manageiq-documentation/pull/1789)
* Configure Renovate [[#1733]](https://github.com/ManageIQ/manageiq-documentation/pull/1733)
* Update peter-evans/repository-dispatch to v3 [[#1779]](https://github.com/ManageIQ/manageiq-documentation/pull/1779)
* Add documentation on setting credentials in workflows [[#1773]](https://github.com/ManageIQ/manageiq-documentation/pull/1773)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-gems-pending](https://github.com/ManageIQ/manageiq-gems-pending/compare/quinteros-2.2...radjabov-1)

### Bug

* Fix MiqXml handling of BOM + handle CVE-2024-39908 [[#581]](https://github.com/ManageIQ/manageiq-gems-pending/pull/581)

### Other

* [RADJABOV] Lockdown Ruby version to Ruby 3.3 [[#598]](https://github.com/ManageIQ/manageiq-gems-pending/pull/598)
* Test with Ruby 3.1 and 3.3 [[#597]](https://github.com/ManageIQ/manageiq-gems-pending/pull/597)
* Switch the CI matrix from include to exclude [[#593]](https://github.com/ManageIQ/manageiq-gems-pending/pull/593)
* Fix broken test matrix  and add ruby 3.2 and 3.3 [[#592]](https://github.com/ManageIQ/manageiq-gems-pending/pull/592)
* Drop Rails 6.1 testing and add Rails 7.1 and 7.2 testing [[#590]](https://github.com/ManageIQ/manageiq-gems-pending/pull/590)
* Bump more_core_extensions to 4.5 minimum [[#591]](https://github.com/ManageIQ/manageiq-gems-pending/pull/591)
* Bump rexml to 3.3.6 for CVE-2024-43398 [[#589]](https://github.com/ManageIQ/manageiq-gems-pending/pull/589)
* Update paambaati/codeclimate-action action to v9 [[#587]](https://github.com/ManageIQ/manageiq-gems-pending/pull/587)
* Use ruby 3.1 and rails 7 for code coverage [[#583]](https://github.com/ManageIQ/manageiq-gems-pending/pull/583)
* Upgrade rexml to 3.3.3+ for CVE-2024-41123 and CVE-2024-41946 [[#582]](https://github.com/ManageIQ/manageiq-gems-pending/pull/582)
* Update paambaati/codeclimate-action action to v8 [[#580]](https://github.com/ManageIQ/manageiq-gems-pending/pull/580)
* Print the memory consumed and loaded files for each require line [[#579]](https://github.com/ManageIQ/manageiq-gems-pending/pull/579)
* Update paambaati/codeclimate-action action to v6 [[#575]](https://github.com/ManageIQ/manageiq-gems-pending/pull/575)
* Configure Renovate [[#560]](https://github.com/ManageIQ/manageiq-gems-pending/pull/560)
* Update codeclimate channel to the latest in manageiq-style [[#573]](https://github.com/ManageIQ/manageiq-gems-pending/pull/573)
* [RADJABOV] Test radjabov with ruby 3.1 [[#572]](https://github.com/ManageIQ/manageiq-gems-pending/pull/572)
* Add ruby 3.1 to the test matrix [[#571]](https://github.com/ManageIQ/manageiq-gems-pending/pull/571)
* Allow rails 7 gems in gemspec [[#570]](https://github.com/ManageIQ/manageiq-gems-pending/pull/570)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-pods](https://github.com/ManageIQ/manageiq-pods/compare/quinteros-2.2...radjabov-1)

### Bug

* Don't include newer openssl packages from CentOS Stream [[#1233]](https://github.com/ManageIQ/manageiq-pods/pull/1233)
* CP4AIOPS-3113 pass delimiter for groups [[#1155]](https://github.com/ManageIQ/manageiq-pods/pull/1155)
* Watch routes and ingress, ensure we're only using one [[#1169]](https://github.com/ManageIQ/manageiq-pods/pull/1169)
* Fix issue with pass-by-reference [[#1167]](https://github.com/ManageIQ/manageiq-pods/pull/1167)
* Make the sed line Mac compatible [[#1151]](https://github.com/ManageIQ/manageiq-pods/pull/1151)
* Switch to ubuntu-24.04 [[#1139]](https://github.com/ManageIQ/manageiq-pods/pull/1139)
* Fix the path for `oc create -f` custom operator [[#1132]](https://github.com/ManageIQ/manageiq-pods/pull/1132)
* Fix bug in TLS secret detection [[#1121]](https://github.com/ManageIQ/manageiq-pods/pull/1121)
* Remove creation of manageiq.liveness-check topic [[#1101]](https://github.com/ManageIQ/manageiq-pods/pull/1101)
* Fix nil pointer dereference error [[#1109]](https://github.com/ManageIQ/manageiq-pods/pull/1109)
* Updated PodSelector label to opentofu-runner [[#1106]](https://github.com/ManageIQ/manageiq-pods/pull/1106)
* Revert "Merge pull request #1096 from bdunne/openssl_fix" [[#1099]](https://github.com/ManageIQ/manageiq-pods/pull/1099)
* Switch from UBI openssl-libs to Stream openssl-libs [[#1096]](https://github.com/ManageIQ/manageiq-pods/pull/1096)
* Fix the manifest generation by allowing it to see the local rpms [[#1071]](https://github.com/ManageIQ/manageiq-pods/pull/1071)
* Ansible EL9 followup [[#1060]](https://github.com/ManageIQ/manageiq-pods/pull/1060)
* Only return passwords that include letters. [[#1052]](https://github.com/ManageIQ/manageiq-pods/pull/1052)
* Error handling for FindCatalogSourceByName [[#1044]](https://github.com/ManageIQ/manageiq-pods/pull/1044)
* Revert default messaging change [[#1026]](https://github.com/ManageIQ/manageiq-pods/pull/1026)

### Enhancement

* Switch to ruby 3.3 [[#1184]](https://github.com/ManageIQ/manageiq-pods/pull/1184)
* Prefer UBI and go download over library/golang [[#1173]](https://github.com/ManageIQ/manageiq-pods/pull/1173)
* Default the system password_encryption to scram-sha-256 [[#1157]](https://github.com/ManageIQ/manageiq-pods/pull/1157)
* Detect the latest version of dumb-init and use that [[#1163]](https://github.com/ManageIQ/manageiq-pods/pull/1163)
* Restart pods on certificate renewal [[#1165]](https://github.com/ManageIQ/manageiq-pods/pull/1165)
* If routes are available, prefer them and use cluster default certificate [[#1161]](https://github.com/ManageIQ/manageiq-pods/pull/1161)
* Creating service for Opentofu runner [[#1108]](https://github.com/ManageIQ/manageiq-pods/pull/1108)
* Creating network policy for opentofu runner [[#1104]](https://github.com/ManageIQ/manageiq-pods/pull/1104)
* Add a CRD field to replace InsecureSkipVerify=true [[#1081]](https://github.com/ManageIQ/manageiq-pods/pull/1081)
* Updates for OpenTofu runner [[#1067]](https://github.com/ManageIQ/manageiq-pods/pull/1067)
* Move RPM copying into a separate image [[#1065]](https://github.com/ManageIQ/manageiq-pods/pull/1065)
* Upgrade the operator to UBI9 [[#1055]](https://github.com/ManageIQ/manageiq-pods/pull/1055)
* Add OS release version to our image tags [[#1050]](https://github.com/ManageIQ/manageiq-pods/pull/1050)
* Upgrade to ruby 3.1 [[#1038]](https://github.com/ManageIQ/manageiq-pods/pull/1038)
* Move orchestrator internal root cert to projected volume source [[#1030]](https://github.com/ManageIQ/manageiq-pods/pull/1030)
* Bump strimzi to 0.37 [[#1025]](https://github.com/ManageIQ/manageiq-pods/pull/1025)
* Replace Bitnami with Strimzi Kafka [[#1005]](https://github.com/ManageIQ/manageiq-pods/pull/1005)
* Deploy messaging by default [[#1024]](https://github.com/ManageIQ/manageiq-pods/pull/1024)
* Enforce and default Kafka configuration [[#896]](https://github.com/ManageIQ/manageiq-pods/pull/896)
* AddLabels util function [[#1020]](https://github.com/ManageIQ/manageiq-pods/pull/1020)

### Other

* Update kubernetes packages to v0.32.1 [[#1196]](https://github.com/ManageIQ/manageiq-pods/pull/1196)
* Update go dependencies [[#1195]](https://github.com/ManageIQ/manageiq-pods/pull/1195)
* Update module sigs.k8s.io/controller-runtime to v0.19.4 [[#1189]](https://github.com/ManageIQ/manageiq-pods/pull/1189)
* Update go dependencies [[#1190]](https://github.com/ManageIQ/manageiq-pods/pull/1190)
* go get -t -u ./... && go mod tidy [[#1185]](https://github.com/ManageIQ/manageiq-pods/pull/1185)
* Update module github.com/onsi/ginkgo/v2 to v2.21.0 [[#1181]](https://github.com/ManageIQ/manageiq-pods/pull/1181)
* Update module github.com/onsi/gomega to v1.35.1 [[#1182]](https://github.com/ManageIQ/manageiq-pods/pull/1182)
* Update go dependencies [[#1180]](https://github.com/ManageIQ/manageiq-pods/pull/1180)
* Update go dependencies [[#1177]](https://github.com/ManageIQ/manageiq-pods/pull/1177)
* Update go dependencies [[#1176]](https://github.com/ManageIQ/manageiq-pods/pull/1176)
* Update go dependencies [[#1174]](https://github.com/ManageIQ/manageiq-pods/pull/1174)
* Update go dependencies [[#1172]](https://github.com/ManageIQ/manageiq-pods/pull/1172)
* Update go dependencies [[#1171]](https://github.com/ManageIQ/manageiq-pods/pull/1171)
* Update go dependencies [[#1168]](https://github.com/ManageIQ/manageiq-pods/pull/1168)
* Update go dependencies [[#1164]](https://github.com/ManageIQ/manageiq-pods/pull/1164)
* Replace EMS_IDS with EMS_ID in container entrypoint [[#1170]](https://github.com/ManageIQ/manageiq-pods/pull/1170)
* Update module github.com/onsi/gomega to v1.34.2 [[#1160]](https://github.com/ManageIQ/manageiq-pods/pull/1160)
* Update go dependencies [[#1158]](https://github.com/ManageIQ/manageiq-pods/pull/1158)
* Update module github.com/onsi/ginkgo/v2 to v2.20.2 [[#1159]](https://github.com/ManageIQ/manageiq-pods/pull/1159)
* Update peter-evans/create-pull-request action to v7 [[#1162]](https://github.com/ManageIQ/manageiq-pods/pull/1162)
* Update module github.com/onsi/ginkgo/v2 to v2.20.1 [[#1156]](https://github.com/ManageIQ/manageiq-pods/pull/1156)
* Upgrade to dumb-init 1.2.5 [[#1154]](https://github.com/ManageIQ/manageiq-pods/pull/1154)
* Update go dependencies [[#1153]](https://github.com/ManageIQ/manageiq-pods/pull/1153)
* Update go dependencies and operator-sdk [[#1150]](https://github.com/ManageIQ/manageiq-pods/pull/1150)
* Update go to v1.23 [[#1148]](https://github.com/ManageIQ/manageiq-pods/pull/1148)
* Update module sigs.k8s.io/controller-runtime to v0.18.5 [[#1144]](https://github.com/ManageIQ/manageiq-pods/pull/1144)
* Update go dependencies [[#1143]](https://github.com/ManageIQ/manageiq-pods/pull/1143)
* Update dependency go to v1.22.6 [[#1141]](https://github.com/ManageIQ/manageiq-pods/pull/1141)
* Update go dependencies [[#1140]](https://github.com/ManageIQ/manageiq-pods/pull/1140)
* Update module github.com/onsi/gomega to v1.34.1 [[#1138]](https://github.com/ManageIQ/manageiq-pods/pull/1138)
* Update go dependencies [[#1137]](https://github.com/ManageIQ/manageiq-pods/pull/1137)
* Update kubernetes packages to v0.30.3 [[#1131]](https://github.com/ManageIQ/manageiq-pods/pull/1131)
* Update module github.com/onsi/gomega to v1.34.0 [[#1135]](https://github.com/ManageIQ/manageiq-pods/pull/1135)
* Update go dependencies [[#1130]](https://github.com/ManageIQ/manageiq-pods/pull/1130)
* Update dependency go to v1.22.5 [[#1127]](https://github.com/ManageIQ/manageiq-pods/pull/1127)
* Update go dependencies [[#1129]](https://github.com/ManageIQ/manageiq-pods/pull/1129)
* Update go dependencies [[#1126]](https://github.com/ManageIQ/manageiq-pods/pull/1126)
* Update go dependencies [[#1124]](https://github.com/ManageIQ/manageiq-pods/pull/1124)
* Update go dependencies [[#1120]](https://github.com/ManageIQ/manageiq-pods/pull/1120)
* Kafka and Zookeeper images are no longer used [[#1125]](https://github.com/ManageIQ/manageiq-pods/pull/1125)
* Update dependency go to v1.22.4 [[#1117]](https://github.com/ManageIQ/manageiq-pods/pull/1117)
* Update go dependencies [[#1116]](https://github.com/ManageIQ/manageiq-pods/pull/1116)
* Update go dependencies [[#1114]](https://github.com/ManageIQ/manageiq-pods/pull/1114)
* Update module github.com/operator-framework/api to v0.25.0 [[#1111]](https://github.com/ManageIQ/manageiq-pods/pull/1111)
* Update module github.com/onsi/ginkgo/v2 to v2.18.0 [[#1110]](https://github.com/ManageIQ/manageiq-pods/pull/1110)
* Update go dependencies [[#1107]](https://github.com/ManageIQ/manageiq-pods/pull/1107)
* Update kubernetes packages to v0.30.1 [[#1105]](https://github.com/ManageIQ/manageiq-pods/pull/1105)
* Fix instructions for using local RPMs [[#1103]](https://github.com/ManageIQ/manageiq-pods/pull/1103)
* Update go dependencies [[#1102]](https://github.com/ManageIQ/manageiq-pods/pull/1102)
* Update module sigs.k8s.io/controller-runtime to v0.18.2 [[#1092]](https://github.com/ManageIQ/manageiq-pods/pull/1092)
* Update module github.com/onsi/ginkgo/v2 to v2.17.3 [[#1094]](https://github.com/ManageIQ/manageiq-pods/pull/1094)
* Update dependency go to v1.22.3 [[#1100]](https://github.com/ManageIQ/manageiq-pods/pull/1100)
* Update go dependencies [[#1098]](https://github.com/ManageIQ/manageiq-pods/pull/1098)
* Update module github.com/onsi/gomega to v1.33.1 [[#1095]](https://github.com/ManageIQ/manageiq-pods/pull/1095)
* Update go dependencies [[#1091]](https://github.com/ManageIQ/manageiq-pods/pull/1091)
* Update module github.com/onsi/gomega to v1.33.0 [[#1090]](https://github.com/ManageIQ/manageiq-pods/pull/1090)
* Update kubernetes packages to v0.29.4 [[#1088]](https://github.com/ManageIQ/manageiq-pods/pull/1088)
* Update go dependencies [[#1087]](https://github.com/ManageIQ/manageiq-pods/pull/1087)
* Update module sigs.k8s.io/controller-runtime to v0.17.3 [[#1086]](https://github.com/ManageIQ/manageiq-pods/pull/1086)
* Update go dependencies [[#1085]](https://github.com/ManageIQ/manageiq-pods/pull/1085)
* Update the base image first [[#1084]](https://github.com/ManageIQ/manageiq-pods/pull/1084)
* Update go dependencies [[#1079]](https://github.com/ManageIQ/manageiq-pods/pull/1079)
* Upgrade to operator-sdk v1.34.1 [[#1078]](https://github.com/ManageIQ/manageiq-pods/pull/1078)
* Update module github.com/onsi/ginkgo/v2 to v2.17.0 [[#1074]](https://github.com/ManageIQ/manageiq-pods/pull/1074)
* Update module github.com/onsi/gomega to v1.32.0 [[#1075]](https://github.com/ManageIQ/manageiq-pods/pull/1075)
* Drop MAINTAINER docker commands [[#1070]](https://github.com/ManageIQ/manageiq-pods/pull/1070)
* Update go dependencies [[#1073]](https://github.com/ManageIQ/manageiq-pods/pull/1073)
* Upgrade to ginkgo v2 [[#1029]](https://github.com/ManageIQ/manageiq-pods/pull/1029)
* Update go dependencies [[#1066]](https://github.com/ManageIQ/manageiq-pods/pull/1066)
* Update CI to use Ruby 3.1 [[#1068]](https://github.com/ManageIQ/manageiq-pods/pull/1068)
* Reorder DB container_env values for readability [[#1069]](https://github.com/ManageIQ/manageiq-pods/pull/1069)
* Update go dependencies [[#1064]](https://github.com/ManageIQ/manageiq-pods/pull/1064)
* Since openshift/api is riding master, it is constantly changing [[#1063]](https://github.com/ManageIQ/manageiq-pods/pull/1063)
* Update go dependencies [[#1061]](https://github.com/ManageIQ/manageiq-pods/pull/1061)
* Upgrade to UBI9 [[#903]](https://github.com/ManageIQ/manageiq-pods/pull/903)
* Update go dependencies [[#1059]](https://github.com/ManageIQ/manageiq-pods/pull/1059)
* Update go dependencies [[#1057]](https://github.com/ManageIQ/manageiq-pods/pull/1057)
* Update to go v1.22 [[#1054]](https://github.com/ManageIQ/manageiq-pods/pull/1054)
* Update github.com/openshift/api digest to 7162acc [[#1037]](https://github.com/ManageIQ/manageiq-pods/pull/1037)
* Update go dependencies [[#1049]](https://github.com/ManageIQ/manageiq-pods/pull/1049)
* Update peter-evans/create-pull-request action to v6 [[#1045]](https://github.com/ManageIQ/manageiq-pods/pull/1045)
* Update go dependencies [[#1042]](https://github.com/ManageIQ/manageiq-pods/pull/1042)
* Drop Issue/PR templates after merge of ManageIQ/.github#7 [[#1040]](https://github.com/ManageIQ/manageiq-pods/pull/1040)
* Update peter-evans/repository-dispatch action to v3 [[#1039]](https://github.com/ManageIQ/manageiq-pods/pull/1039)
* Update github.com/openshift/api digest to 2054c69 [[#1012]](https://github.com/ManageIQ/manageiq-pods/pull/1012)
* Update go dependencies [[#1036]](https://github.com/ManageIQ/manageiq-pods/pull/1036)
* Change renovate to do a go mody tidy as part of the update [[#1031]](https://github.com/ManageIQ/manageiq-pods/pull/1031)
* Update go dependencies [[#1032]](https://github.com/ManageIQ/manageiq-pods/pull/1032)
* Upgrade to operator-sdk v1.33 [[#1027]](https://github.com/ManageIQ/manageiq-pods/pull/1027)
* Update actions/setup-go action to v5 [[#1021]](https://github.com/ManageIQ/manageiq-pods/pull/1021)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-amazon](https://github.com/ManageIQ/manageiq-providers-amazon/compare/quinteros-2.2...radjabov-1)

### Bug

* Handle Gbps in AWS database types [[#873]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/873)
* Handle nil case for networkPerformance key in deprecated AWS database types [[#872]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/872)
* Delegate refresh_ems class method to parent cloud manager [[#874]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/874)

### Enhancement

* Update AWS instance_types [[#879]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/879)
* Update AWS instance_types [[#878]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/878)
* Update AWS instance_types [[#875]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/875)
* Update AWS instance_types [[#868]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/868)
* Update AWS instance_types [[#866]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/866)
* Update AWS instance_types [[#864]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/864)
* Update AWS instance_types [[#863]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/863)
* Update AWS instance_types [[#862]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/862)
* Update AWS instance_types [[#861]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/861)
* Update AWS instance_types [[#858]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/858)
* Update AWS instance_types [[#857]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/857)
* Delay load the net-scp require to avoid bloating eager loading [[#856]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/856)
* Update AWS instance_types [[#855]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/855)
* Update AWS instance_types [[#852]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/852)
* Update AWS instance_types [[#849]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/849)
* Update AWS instance_types [[#848]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/848)
* Update AWS instance_types [[#842]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/842)
* Update AWS instance_types [[#840]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/840)

### Other

* [RADJABOV] Lockdown Ruby version to Ruby 3.3 [[#876]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/876)
* Testing with ruby 3.2, 3.3 [[#870]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/870)
* Update peter-evans/create-pull-request action to v7 [[#869]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/869)
* Update paambaati/codeclimate-action action to v9 [[#867]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/867)
* Use ruby 3.1 for code coverage [[#865]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/865)
* Update paambaati/codeclimate-action action to v8 [[#860]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/860)
* Bump net-scp gem for openssl 3.0 support [[#854]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/854)
* Update paambaati/codeclimate-action action to v6 [[#853]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/853)
* Configure Renovate [[#813]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/813)
* Update codeclimate channel to the latest in manageiq-style [[#847]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/847)
* Update GHA versions [[#846]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/846)
* Drop supports_feature? and unsupported_reason_add [[#843]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/843)
* [RADJABOV] Test radjabov with ruby 3.1 [[#845]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/845)
* Test with ruby 3.1 and 3.0 [[#841]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/841)
* Bump Ruby version for instance_types GitHub action [[#839]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/839)
* Drop require_nested and include_concern [[#838]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/838)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-ansible_tower](https://github.com/ManageIQ/manageiq-providers-ansible_tower/compare/quinteros-2.2...radjabov-1)

### Bug

* Don't redefine AutomationManager::Job relations [[#301]](https://github.com/ManageIQ/manageiq-providers-ansible_tower/pull/301)
* Use the right foreign_key for Job#job_template [[#302]](https://github.com/ManageIQ/manageiq-providers-ansible_tower/pull/302)

### Enhancement

* Delay load the ansible tower client [[#311]](https://github.com/ManageIQ/manageiq-providers-ansible_tower/pull/311)

### Other

* [RADJABOV] Lockdown Ruby version to Ruby 3.3 [[#317]](https://github.com/ManageIQ/manageiq-providers-ansible_tower/pull/317)
* Testing with ruby 3.2, 3.3 [[#315]](https://github.com/ManageIQ/manageiq-providers-ansible_tower/pull/315)
* Update paambaati/codeclimate-action action to v9 [[#314]](https://github.com/ManageIQ/manageiq-providers-ansible_tower/pull/314)
* Use ruby 3.1 for code coverage [[#313]](https://github.com/ManageIQ/manageiq-providers-ansible_tower/pull/313)
* Update paambaati/codeclimate-action action to v8 [[#312]](https://github.com/ManageIQ/manageiq-providers-ansible_tower/pull/312)
* Update paambaati/codeclimate-action action to v6 [[#310]](https://github.com/ManageIQ/manageiq-providers-ansible_tower/pull/310)
* Configure Renovate [[#293]](https://github.com/ManageIQ/manageiq-providers-ansible_tower/pull/293)
* Update codeclimate channel to the latest in manageiq-style [[#308]](https://github.com/ManageIQ/manageiq-providers-ansible_tower/pull/308)
* delegate `:if` to a symbol [[#307]](https://github.com/ManageIQ/manageiq-providers-ansible_tower/pull/307)
* [RADJABOV] Test radjabov with ruby 3.1 [[#305]](https://github.com/ManageIQ/manageiq-providers-ansible_tower/pull/305)
* Test with ruby 3.1 and 3.0 [[#304]](https://github.com/ManageIQ/manageiq-providers-ansible_tower/pull/304)
* Drop require_nested [[#303]](https://github.com/ManageIQ/manageiq-providers-ansible_tower/pull/303)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-autosde](https://github.com/ManageIQ/manageiq-providers-autosde/compare/quinteros-2.2...radjabov-1)

### Bug

* Add zone_id to vcloud amqp validationDependencies [[#241]](https://github.com/ManageIQ/manageiq-providers-autosde/pull/241)

### Other

* [RADJABOV] Lockdown Ruby version to Ruby 3.3 [[#254]](https://github.com/ManageIQ/manageiq-providers-autosde/pull/254)
* Testing with ruby 3.2, 3.3 [[#252]](https://github.com/ManageIQ/manageiq-providers-autosde/pull/252)
* Add typhoeus gem depdendency [[#3]](https://github.com/ManageIQ/manageiq-providers-autosde/pull/3)
* Update paambaati/codeclimate-action action to v9 [[#251]](https://github.com/ManageIQ/manageiq-providers-autosde/pull/251)
* Use ruby 3.1 for code coverage [[#250]](https://github.com/ManageIQ/manageiq-providers-autosde/pull/250)
* Update paambaati/codeclimate-action action to v8 [[#249]](https://github.com/ManageIQ/manageiq-providers-autosde/pull/249)
* Update paambaati/codeclimate-action action to v6 [[#248]](https://github.com/ManageIQ/manageiq-providers-autosde/pull/248)
* Configure Renovate [[#232]](https://github.com/ManageIQ/manageiq-providers-autosde/pull/232)
* Update codeclimate channel to the latest in manageiq-style [[#246]](https://github.com/ManageIQ/manageiq-providers-autosde/pull/246)
* [RADJABOV] Test radjabov with ruby 3.1 [[#245]](https://github.com/ManageIQ/manageiq-providers-autosde/pull/245)
* drop use of unsupported_reason_add [[#244]](https://github.com/ManageIQ/manageiq-providers-autosde/pull/244)
* Test with ruby 3.1 and 3.0 [[#243]](https://github.com/ManageIQ/manageiq-providers-autosde/pull/243)
* Drop require_nested [[#242]](https://github.com/ManageIQ/manageiq-providers-autosde/pull/242)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-awx](https://github.com/ManageIQ/manageiq-providers-awx/compare/quinteros-2.2...radjabov-1)

### Bug

* Use common Ansible template parent class in runner [[#36]](https://github.com/ManageIQ/manageiq-providers-awx/pull/36)
* Fix Job#job_template class_name resolving to Awx namespace [[#30]](https://github.com/ManageIQ/manageiq-providers-awx/pull/30)
* Use the right foreign_key for Job#job_template [[#22]](https://github.com/ManageIQ/manageiq-providers-awx/pull/22)

### Enhancement

* Delay load the ansible tower client [[#32]](https://github.com/ManageIQ/manageiq-providers-awx/pull/32)

### Other

* [RADJABOV] Lockdown Ruby version to Ruby 3.3 [[#39]](https://github.com/ManageIQ/manageiq-providers-awx/pull/39)
* test with ruby 3.3 [[#38]](https://github.com/ManageIQ/manageiq-providers-awx/pull/38)
* Add a timeout to ruby-setup in ci.yaml [[#2]](https://github.com/ManageIQ/manageiq-providers-awx/pull/2)
* Update paambaati/codeclimate-action action to v9 [[#35]](https://github.com/ManageIQ/manageiq-providers-awx/pull/35)
* Use ruby 3.1 for code coverage [[#34]](https://github.com/ManageIQ/manageiq-providers-awx/pull/34)
* Update paambaati/codeclimate-action action to v8 [[#33]](https://github.com/ManageIQ/manageiq-providers-awx/pull/33)
* Update paambaati/codeclimate-action action to v6 [[#31]](https://github.com/ManageIQ/manageiq-providers-awx/pull/31)
* Configure Renovate [[#14]](https://github.com/ManageIQ/manageiq-providers-awx/pull/14)
* Update codeclimate channel to the latest in manageiq-style [[#28]](https://github.com/ManageIQ/manageiq-providers-awx/pull/28)
* [RADJABOV] Test radjabov with ruby 3.1 [[#26]](https://github.com/ManageIQ/manageiq-providers-awx/pull/26)
* Test with ruby 3.1 and 3.0 [[#25]](https://github.com/ManageIQ/manageiq-providers-awx/pull/25)
* Add supports :update/:delete to AWX Credential [[#24]](https://github.com/ManageIQ/manageiq-providers-awx/pull/24)
* Drop require_nested [[#23]](https://github.com/ManageIQ/manageiq-providers-awx/pull/23)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-azure](https://github.com/ManageIQ/manageiq-providers-azure/compare/quinteros-2.2...radjabov-1)

### Bug

* Fix Azure NetworkManager refresh disconnecting managed_images [[#564]](https://github.com/ManageIQ/manageiq-providers-azure/pull/564)
* Clean up network interface and public ip on failure [[#560]](https://github.com/ManageIQ/manageiq-providers-azure/pull/560)
* Fix Azure CloudSubnet missing address_prefix [[#558]](https://github.com/ManageIQ/manageiq-providers-azure/pull/558)
* Add zone_id to AKS validationDependencies [[#545]](https://github.com/ManageIQ/manageiq-providers-azure/pull/545)

### Other

* [RADJABOV] Lockdown Ruby version to Ruby 3.3 [[#565]](https://github.com/ManageIQ/manageiq-providers-azure/pull/565)
* Testing with ruby 3.2, 3.3 [[#562]](https://github.com/ManageIQ/manageiq-providers-azure/pull/562)
* Update paambaati/codeclimate-action action to v9 [[#557]](https://github.com/ManageIQ/manageiq-providers-azure/pull/557)
* Use ruby 3.1 for code coverage [[#556]](https://github.com/ManageIQ/manageiq-providers-azure/pull/556)
* Update paambaati/codeclimate-action action to v8 [[#555]](https://github.com/ManageIQ/manageiq-providers-azure/pull/555)
* Update paambaati/codeclimate-action action to v6 [[#554]](https://github.com/ManageIQ/manageiq-providers-azure/pull/554)
* Configure Renovate [[#535]](https://github.com/ManageIQ/manageiq-providers-azure/pull/535)
* Update codeclimate channel to the latest in manageiq-style [[#551]](https://github.com/ManageIQ/manageiq-providers-azure/pull/551)
* drop unsupported_reason_add [[#549]](https://github.com/ManageIQ/manageiq-providers-azure/pull/549)
* [RADJABOV] Test radjabov with ruby 3.1 [[#550]](https://github.com/ManageIQ/manageiq-providers-azure/pull/550)
* Test with ruby 3.1 and 3.0 [[#548]](https://github.com/ManageIQ/manageiq-providers-azure/pull/548)
* Drop require_nested and include_concern [[#546]](https://github.com/ManageIQ/manageiq-providers-azure/pull/546)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-azure_stack](https://github.com/ManageIQ/manageiq-providers-azure_stack/compare/quinteros-2.2...radjabov-1)

### Other

* [RADJABOV] Lockdown Ruby version to Ruby 3.3 [[#114]](https://github.com/ManageIQ/manageiq-providers-azure_stack/pull/114)
* Testing with ruby 3.2, 3.3 [[#111]](https://github.com/ManageIQ/manageiq-providers-azure_stack/pull/111)
* Update paambaati/codeclimate-action action to v9 [[#110]](https://github.com/ManageIQ/manageiq-providers-azure_stack/pull/110)
* Use ruby 3.1 for code coverage [[#109]](https://github.com/ManageIQ/manageiq-providers-azure_stack/pull/109)
* Update paambaati/codeclimate-action action to v8 [[#108]](https://github.com/ManageIQ/manageiq-providers-azure_stack/pull/108)
* Update paambaati/codeclimate-action action to v6 [[#107]](https://github.com/ManageIQ/manageiq-providers-azure_stack/pull/107)
* Configure Renovate [[#94]](https://github.com/ManageIQ/manageiq-providers-azure_stack/pull/94)
* Update codeclimate channel to the latest in manageiq-style [[#105]](https://github.com/ManageIQ/manageiq-providers-azure_stack/pull/105)
* [RADJABOV] Test radjabov with ruby 3.1 [[#104]](https://github.com/ManageIQ/manageiq-providers-azure_stack/pull/104)
* Test with ruby 3.1 and 3.0 [[#103]](https://github.com/ManageIQ/manageiq-providers-azure_stack/pull/103)
* Drop require_nested [[#102]](https://github.com/ManageIQ/manageiq-providers-azure_stack/pull/102)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-cisco_intersight](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/compare/quinteros-2.2...radjabov-1)

### Bug

* Fix URL override not being used for API calls [[#126]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/126)
* Add zone_id to provider validationDependencies [[#104]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/104)

### Enhancement

* Allow overriding the Cisco Intersight ApiClient scheme/host/verify_ssl for on-premise intersight controller [[#107]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/107)

### Other

* [RADJABOV] Lockdown Ruby version to Ruby 3.3 [[#123]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/123)
* Test with Ruby 3.1 and 3.3 [[#122]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/122)
* Update paambaati/codeclimate-action action to v9 [[#121]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/121)
* Use ruby 3.1 for code coverage [[#119]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/119)
* Update Yarn to v4.3.1 [[#118]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/118)
* Update Yarn to v4.3.0 [[#115]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/115)
* Update paambaati/codeclimate-action action to v8 [[#117]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/117)
* Update Yarn to v4.2.2 [[#114]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/114)
* Update Yarn to v4.2.1 [[#110]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/110)
* Update yarn to stable v4.1.1 [[#113]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/113)
* Update paambaati/codeclimate-action action to v6 [[#112]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/112)
* Configure Renovate [[#93]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/93)
* Update codeclimate channel to the latest in manageiq-style [[#109]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/109)
* [RADJABOV] Test radjabov with ruby 3.1 [[#108]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/108)
* Test with ruby 3.1 and 3.0 [[#106]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/106)
* Drop require_nested and include_concern [[#105]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/105)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-embedded_terraform](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/compare/dd9f38fedcd06ef80779a29ec311c2e0744edbcf...radjabov-1)

### Bug

* Fix new dialog creation, if no input var in terraform template and spec added [[#77]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/77)
* OpentofuWorker#stop_worker should delete the pod [[#73]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/73)
* Fix `Terraform::Runner.available?` [[#70]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/70)
* Always create opentofu_worker miq_workers record [[#68]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/68)
* Fix terraform template name [[#66]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/66)
* Fix credential type text [[#64]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/64)
* Marshalling boolean value to environment varaible of type string [[#63]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/63)
* Check embedded_terraform role in `Button::EmbeddedTerraform#disabled?` [[#58]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/58)
* Fix Failed ServiceTerraformTemplate Provision finishing with Success Status [[#57]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/57)
* Removed runAsUser from opentofu-runner deployment definition  [[#55]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/55)
* Parse dialog options as Extra Vars [[#53]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/53)
* Fix some issues with opentofu-runner systemd service [[#52]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/52)
* Fix /home/node HOME directory [[#54]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/54)
* Updating opentofu-runner worker deployment as per terraform-runner service requirement [[#51]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/51)
* Fix handling of template_path with trailing `/` [[#48]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/48)
* Set the default port to 6000 since that's what is used in production [[#46]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/46)
* Fix opentofu-runner postgresql connection refused [[#40]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/40)
* Pass a certs volume to opentofu-runner [[#34]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/34)
* Implement ServiceTerraformTemplate#refresh [[#42]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/42)
* Ensure the correct port is exposed in kubernetes [[#41]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/41)
* Add --expose=6000 for opentofu-runner service [[#39]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/39)
* Fix Terraform::Runner credentials [[#33]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/33)
* Fix MEMCACHE_SERVERS ENV var for opentofu-runner [[#35]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/35)
* Fix missing Environment Variables in opentofu-runner [[#32]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/32)
* Fix Provision options for EmbeddedTerraform Stack [[#30]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/30)
* Override default containerport 3000 to opentofu runner port 6000 [[#29]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/29)
* Fix OpentofuWorker worker_deployment_name [[#27]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/27)
* Fix missing create_container_objects method in OpentofuRunner [[#26]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/26)
* Fix repository refresh button [[#17]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/17)
* Rename ConfigurationScriptPayload as Template [[#9]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/9)
* Add `ManageIQ::Providers::EmbeddedTerraform` to seedable_classes [[#4]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/4)

### Enhancement

* Retire terraform runner stack [[#71]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/71)
* Add methods to fetch terraform stdout for showing in UI. [[#78]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/78)
* Parse terraform template & create new service dialog with parsed input vars [[#75]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/75)
* Adding environment variable for offline or airgap env [[#62]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/62)
* Generate JWT token from v2_key [[#56]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/56)
* Add service_template_embedded_terraform_template [[#15]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/15)
* Split ibm cloud credentials from ibm classic infra credentials [[#23]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/23)
* Attaching volume to OpenTofu runner to read https certs [[#24]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/24)
* Move opentofu-runner container image name to an environment variable [[#25]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/25)
* Rename ansible product features to renamed generic terms [[#22]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/22)
* Add Opentofu Worker [[#2]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/2)
* Add cloud creds support for terraform runner [[#16]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/16)
* Add new table columns for templates and repositories [[#18]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/18)
* Add EmbeddedTerraform Stack and Job [[#12]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/12)
* Add EmbeddedTerraform UI [[#3]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/3)
* Add methods to run Terraform Templates using TerraformRunner container APIs [[#7]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/7)
* Add Embedded Terraform credential type [[#13]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/13)
* Refactor Terraform Repo sync to not checkout the repository everytime [[#10]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/10)
* Sync Terraform Templates from git repo [[#5]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/5)

### Other

* [RADJABOV] Lockdown Ruby version to Ruby 3.3 [[#88]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/88)
* test with Ruby3.3 [[#85]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/85)
* Add instructions on running opentofu-runner locally [[#83]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/83)
* Remove useless Dir.chdir in Terraform::Runner [[#76]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/76)
* Add an embedded_terraform_job FactoryBot factory [[#80]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/80)
* Refactor OpentofuWorker Environment Variables [[#74]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/74)
* Update paambaati/codeclimate-action action to v9 [[#69]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/69)
* Update paambaati/codeclimate-action action to v8 [[#61]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/61)
* Simplify description from credentials PR #16 [[#21]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/21)
* Rename CloudCredential with TemplateCredential [[#20]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/20)
* Update paambaati/codeclimate-action action to v6 [[#19]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/19)
* Use api/ping endpoint for the available? check [[#14]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/14)
* Update codeclimate channel to the latest in manageiq-style [[#11]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/11)
* Prepare new repository [[#8]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/8)
* Configure Renovate [[#1]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/1)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-foreman](https://github.com/ManageIQ/manageiq-providers-foreman/compare/quinteros-2.2...radjabov-1)

### Other

* [RADJABOV] Lockdown Ruby version to Ruby 3.3 [[#135]](https://github.com/ManageIQ/manageiq-providers-foreman/pull/135)
* Testing with ruby 3.2, 3.3 [[#133]](https://github.com/ManageIQ/manageiq-providers-foreman/pull/133)
* Update paambaati/codeclimate-action action to v9 [[#132]](https://github.com/ManageIQ/manageiq-providers-foreman/pull/132)
* Use ruby 3.1 for code coverage [[#131]](https://github.com/ManageIQ/manageiq-providers-foreman/pull/131)
* Update paambaati/codeclimate-action action to v8 [[#130]](https://github.com/ManageIQ/manageiq-providers-foreman/pull/130)
* Update paambaati/codeclimate-action action to v6 [[#128]](https://github.com/ManageIQ/manageiq-providers-foreman/pull/128)
* Configure Renovate [[#115]](https://github.com/ManageIQ/manageiq-providers-foreman/pull/115)
* Update codeclimate channel to the latest in manageiq-style [[#126]](https://github.com/ManageIQ/manageiq-providers-foreman/pull/126)
* [RADJABOV] Test radjabov with ruby 3.1 [[#125]](https://github.com/ManageIQ/manageiq-providers-foreman/pull/125)
* Test with ruby 3.1 and 3.0 [[#124]](https://github.com/ManageIQ/manageiq-providers-foreman/pull/124)
* Drop require_nested and include_concern [[#123]](https://github.com/ManageIQ/manageiq-providers-foreman/pull/123)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-google](https://github.com/ManageIQ/manageiq-providers-google/compare/quinteros-2.2...radjabov-1)

### Bug

* Delegate refresh_ems class method to parent cloud manager [[#271]](https://github.com/ManageIQ/manageiq-providers-google/pull/271)
* Cleanup any created disks if start_clone fails [[#256]](https://github.com/ManageIQ/manageiq-providers-google/pull/256)

### Enhancement

* Properly detect labels for virtual machines in GCE [[#269]](https://github.com/ManageIQ/manageiq-providers-google/pull/269)

### Other

* [RADJABOV] Lockdown Ruby version to Ruby 3.3 [[#272]](https://github.com/ManageIQ/manageiq-providers-google/pull/272)
* Testing with ruby 3.2, 3.3 [[#270]](https://github.com/ManageIQ/manageiq-providers-google/pull/270)
* Update paambaati/codeclimate-action action to v9 [[#268]](https://github.com/ManageIQ/manageiq-providers-google/pull/268)
* Use ruby 3.1 for code coverage [[#267]](https://github.com/ManageIQ/manageiq-providers-google/pull/267)
* Update paambaati/codeclimate-action action to v8 [[#266]](https://github.com/ManageIQ/manageiq-providers-google/pull/266)
* Add rbnacl dependency for jwt [[#264]](https://github.com/ManageIQ/manageiq-providers-google/pull/264)
* Update paambaati/codeclimate-action action to v6 [[#265]](https://github.com/ManageIQ/manageiq-providers-google/pull/265)
* Configure Renovate [[#248]](https://github.com/ManageIQ/manageiq-providers-google/pull/248)
* Update codeclimate channel to the latest in manageiq-style [[#262]](https://github.com/ManageIQ/manageiq-providers-google/pull/262)
* drop use of unuspported_reason_add [[#260]](https://github.com/ManageIQ/manageiq-providers-google/pull/260)
* [RADJABOV] Test radjabov with ruby 3.1 [[#261]](https://github.com/ManageIQ/manageiq-providers-google/pull/261)
* Test with ruby 3.1 and 3.0 [[#259]](https://github.com/ManageIQ/manageiq-providers-google/pull/259)
* Drop require_nested and include_concern [[#258]](https://github.com/ManageIQ/manageiq-providers-google/pull/258)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-ibm_cic](https://github.com/ManageIQ/manageiq-providers-ibm_cic/compare/quinteros-2.2...radjabov-1)

### Other

* [RADJABOV] Lockdown Ruby version to Ruby 3.3 [[#54]](https://github.com/ManageIQ/manageiq-providers-ibm_cic/pull/54)
* Test with Ruby 3.1 and 3.3 [[#53]](https://github.com/ManageIQ/manageiq-providers-ibm_cic/pull/53)
* Update paambaati/codeclimate-action action to v9 [[#51]](https://github.com/ManageIQ/manageiq-providers-ibm_cic/pull/51)
* Use ruby 3.1 for code coverage [[#50]](https://github.com/ManageIQ/manageiq-providers-ibm_cic/pull/50)
* Update paambaati/codeclimate-action action to v8 [[#49]](https://github.com/ManageIQ/manageiq-providers-ibm_cic/pull/49)
* Update paambaati/codeclimate-action action to v6 [[#48]](https://github.com/ManageIQ/manageiq-providers-ibm_cic/pull/48)
* Configure Renovate [[#34]](https://github.com/ManageIQ/manageiq-providers-ibm_cic/pull/34)
* Update codeclimate channel to the latest in manageiq-style [[#46]](https://github.com/ManageIQ/manageiq-providers-ibm_cic/pull/46)
* [RADJABOV] Test radjabov with ruby 3.1 [[#45]](https://github.com/ManageIQ/manageiq-providers-ibm_cic/pull/45)
* Test with ruby 3.1 and 3.0 [[#44]](https://github.com/ManageIQ/manageiq-providers-ibm_cic/pull/44)
* Drop require_nested [[#43]](https://github.com/ManageIQ/manageiq-providers-ibm_cic/pull/43)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-ibm_cloud](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/compare/quinteros-2.2...radjabov-1)

### Bug

* Delegate refresh_ems class method to parent cloud manager [[#507]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/507)
* Remove return from supports block [[#502]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/502)
* Install libsodium-dev [[#495]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/495)
* Fix PowerVS Regions ems_type method [[#492]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/492)
* Fix prometheus http_proxy_uri host [[#489]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/489)
* Fix duplicate advanced settings [[#483]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/483)
* Add zone_id to provider validationDependencies for metrics endpoint [[#480]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/480)
* Add targeted refresh specs to PowerVS / Fix targeted VM refresh bug [[#479]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/479)

### Enhancement

* Add new PowerVS region in Madrid, Spain [[#493]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/493)
* Add new VPC regions [[#484]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/484)

### Other

* [RADJABOV] Lockdown Ruby version to Ruby 3.3 [[#508]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/508)
* Testing with ruby 3.2, 3.3 [[#506]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/506)
* Update paambaati/codeclimate-action action to v9 [[#505]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/505)
* Use ruby 3.1 for code coverage [[#503]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/503)
* Update Yarn to v4.3.1 [[#501]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/501)
* Update Yarn to v4.3.0 [[#499]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/499)
* Update paambaati/codeclimate-action action to v8 [[#500]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/500)
* Update Yarn to v4.2.2 [[#498]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/498)
* Update Yarn to v4.2.1 [[#497]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/497)
* Update Yarn to v4.2.0 [[#490]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/490)
* Update yarn to stable v4.1.1 [[#496]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/496)
* Update paambaati/codeclimate-action action to v6 [[#494]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/494)
* Configure Renovate [[#458]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/458)
* Update codeclimate channel to the latest in manageiq-style [[#488]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/488)
* [RADJABOV] Test radjabov with ruby 3.1 [[#487]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/487)
* drop use of unsupported_reason_add an supports_feature [[#486]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/486)
* Test with ruby 3.1 and 3.0 [[#485]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/485)
* Drop require_nested and include_concern [[#482]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/482)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-ibm_power_hmc](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/compare/quinteros-2.2...radjabov-1)

### Bug

* Refresh entire provider for special LPAR UUID [[#164]](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/164)
* Remove return from supports block [[#160]](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/160)

### Other

* [RADJABOV] Lockdown Ruby version to Ruby 3.3 [[#166]](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/166)
* Testing with ruby 3.3 [[#163]](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/163)
* Update paambaati/codeclimate-action action to v9 [[#162]](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/162)
*  Use ruby 3.1 for code coverage [[#161]](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/161)
* Update paambaati/codeclimate-action action to v8 [[#159]](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/159)
* Update paambaati/codeclimate-action action to v6 [[#158]](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/158)
* Configure Renovate [[#139]](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/139)
* Update codeclimate channel to the latest in manageiq-style [[#156]](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/156)
* supports_start? => supports?(:start) [[#155]](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/155)
* [RADJABOV] Test radjabov with ruby 3.1 [[#154]](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/154)
* drop unsupported_reason_add [[#153]](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/153)
* Test with ruby 3.1 and 3.0 [[#152]](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/152)
* Drop require_nested and include_concern [[#151]](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/151)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-ibm_power_vc](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/compare/quinteros-2.2...radjabov-1)

### Bug

* Remove return from supports block [[#115]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/115)
* Add zone_id to provider validationDependencies [[#100]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/100)

### Enhancement

* Add OS Version directly to operating_system data [[#106]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/106)

### Other

* [RADJABOV] Lockdown Ruby version to Ruby 3.3 [[#121]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/121)
* Testing with ruby 3.2, 3.3 [[#119]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/119)
* Update paambaati/codeclimate-action action to v9 [[#118]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/118)
* Use ruby 3.1 for code coverage [[#116]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/116)
* Update Yarn to v4.3.1 [[#114]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/114)
* Update Yarn to v4.3.0 [[#112]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/112)
* Update paambaati/codeclimate-action action to v8 [[#113]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/113)
* Update Yarn to v4.2.2 [[#111]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/111)
* Update Yarn to v4.2.1 [[#107]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/107)
* Update yarn to stable v4.1.1 [[#110]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/110)
* Update paambaati/codeclimate-action action to v6 [[#109]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/109)
* Configure Renovate [[#86]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/86)
* Update codeclimate channel to the latest in manageiq-style [[#105]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/105)
* [RADJABOV] Test radjabov with ruby 3.1 [[#104]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/104)
* drop unsupported_reason_add [[#103]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/103)
* Test with ruby 3.1 and 3.0 [[#102]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/102)
* Drop require_nested [[#101]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/101)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-ibm_terraform](https://github.com/ManageIQ/manageiq-providers-ibm_terraform/compare/quinteros-2.2...radjabov-1)

### Other

* [RADJABOV] Lockdown Ruby version to Ruby 3.3 [[#113]](https://github.com/ManageIQ/manageiq-providers-ibm_terraform/pull/113)
* Test with Ruby 3.1 and 3.3 [[#112]](https://github.com/ManageIQ/manageiq-providers-ibm_terraform/pull/112)
* Testing with ruby 3.2, 3.3 [[#111]](https://github.com/ManageIQ/manageiq-providers-ibm_terraform/pull/111)
* Update paambaati/codeclimate-action action to v9 [[#110]](https://github.com/ManageIQ/manageiq-providers-ibm_terraform/pull/110)
* Use ruby 3.1 for code coverage [[#109]](https://github.com/ManageIQ/manageiq-providers-ibm_terraform/pull/109)
* Update paambaati/codeclimate-action action to v8 [[#108]](https://github.com/ManageIQ/manageiq-providers-ibm_terraform/pull/108)
* Update paambaati/codeclimate-action action to v6 [[#106]](https://github.com/ManageIQ/manageiq-providers-ibm_terraform/pull/106)
* Configure Renovate [[#93]](https://github.com/ManageIQ/manageiq-providers-ibm_terraform/pull/93)
* Update codeclimate channel to the latest in manageiq-style [[#104]](https://github.com/ManageIQ/manageiq-providers-ibm_terraform/pull/104)
* [RADJABOV] Test radjabov with ruby 3.1 [[#103]](https://github.com/ManageIQ/manageiq-providers-ibm_terraform/pull/103)
* Test with ruby 3.1 and 3.0 [[#102]](https://github.com/ManageIQ/manageiq-providers-ibm_terraform/pull/102)
* Drop require_nested [[#101]](https://github.com/ManageIQ/manageiq-providers-ibm_terraform/pull/101)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-kubernetes](https://github.com/ManageIQ/manageiq-providers-kubernetes/compare/quinteros-2.2...radjabov-1)

### Bug

* Require kubeclient in connection_rescue_block [[#519]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/519)
* Fix prometheus http_proxy using 0.0.0.0:80 [[#522]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/522)
* Add zone_id to provider validationDependencies [[#513]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/513)

### Enhancement

* Separate OSV and Kubevirt virtualization options from form [[#537]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/537)
* Clarify that KubeVirt is OSV [[#532]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/532)
* Add annotations to container summary pages [[#530]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/530)
* Provide backward compatible way to globally set permitted classes [[#531]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/531)

### Other

* [RADJABOV] Lockdown Ruby version to Ruby 3.3 [[#542]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/542)
* Testing with ruby 3.2, 3.3 [[#540]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/540)
* Remove newlines from help message [[#539]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/539)
* Update paambaati/codeclimate-action action to v9 [[#538]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/538)
* Use ruby 3.1 for code coverage [[#535]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/535)
* Use Rails 7 way to set yaml permitted classes [[#536]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/536)
* Update paambaati/codeclimate-action action to v8 [[#529]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/529)
* Delay load prometheus client [[#527]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/527)
* Update paambaati/codeclimate-action action to v6 [[#526]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/526)
* Add specs covering K8s `.verify_credentials` [[#523]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/523)
* Configure Renovate [[#491]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/491)
* Delete Prometheus Alerts MonitoringManager [[#518]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/518)
* Update codeclimate channel to the latest in manageiq-style [[#521]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/521)
* convert supports_metrics => supports? [[#520]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/520)
* [RADJABOV] Test radjabov with ruby 3.1 [[#517]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/517)
* drop unsupported_reason_add [[#516]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/516)
* Test with ruby 3.1 and 3.0 [[#515]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/515)
* Drop require_nested [[#514]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/514)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-kubevirt](https://github.com/ManageIQ/manageiq-providers-kubevirt/compare/quinteros-2.2...radjabov-1)

### Bug

* Fix memory attribute retrieval in parser [[#255]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/255)
* Kubevirt authentication status [[#254]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/254)
* Allow override of collector/parser/persister classes [[#251]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/251)
* Service Catalog Provisioning Support [[#250]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/250)
* Fix Kubevirt client get resource by name calls [[#249]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/249)
* Fix parser exception when memory value is missing [[#242]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/242)
* Fix parent_manager class name [[#240]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/240)
* Bump fog-kubevirt to v1.4.0 for ruby3 fixes [[#238]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/238)
* Fix parent_manager class to point to Kubernetes::ContainerManager [[#231]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/231)

### Enhancement

* Restart a Virtual Machine [[#263]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/263)
* Create snapshot for a Virtual Machine [[#267]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/267)
* KubeVirt VM Metrics Capture [[#260]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/260)
* Persist VM with host [[#262]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/262)
* Add VM event_groups to settings [[#257]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/257)
* KubeVirt Events Capture [[#256]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/256)
* Openshift Virtualization subclassing changes [[#247]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/247)
* Add catalog support for KubeVirt [[#236]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/236)

### Other

* VM event parsing specs [[#258]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/258)
* [RADJABOV] Lockdown Ruby version to Ruby 3.3 [[#259]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/259)
* Testing with ruby 3.2, 3.3 [[#253]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/253)
* Move RefreshMemory under InfraManager [[#252]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/252)
* Update paambaati/codeclimate-action action to v9 [[#248]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/248)
* Use ruby 3.1 for code coverage [[#243]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/243)
* Update paambaati/codeclimate-action action to v8 [[#235]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/235)
* Update paambaati/codeclimate-action action to v6 [[#234]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/234)
* Configure Renovate [[#219]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/219)
* Update codeclimate channel to the latest in manageiq-style [[#232]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/232)
* [RADJABOV] Test radjabov with ruby 3.1 [[#230]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/230)
* drop unsupported_reason_add [[#229]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/229)
* Test with ruby 3.1 and 3.0 [[#228]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/228)
* Drop require_nested and include_concern [[#227]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/227)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-lenovo](https://github.com/ManageIQ/manageiq-providers-lenovo/compare/quinteros-2.2...radjabov-1)

### Bug

* Add zone_id to provider validationDependencies [[#399]](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/399)

### Other

* [RADJABOV] Lockdown Ruby version to Ruby 3.3 [[#418]](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/418)
* Testing with ruby 3.2, 3.3 [[#417]](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/417)
* remove controller specs [[#10]](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/10)
* Update paambaati/codeclimate-action action to v9 [[#415]](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/415)
* Use ruby 3.1 for code coverage [[#413]](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/413)
* Update Yarn to v4.3.1 [[#412]](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/412)
* Update Yarn to v4.3.0 [[#410]](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/410)
* Update paambaati/codeclimate-action action to v8 [[#411]](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/411)
* Update Yarn to v4.2.2 [[#409]](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/409)
* Update Yarn to v4.2.1 [[#408]](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/408)
* Update Yarn to v4.2.0 [[#404]](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/404)
* Update yarn to stable v4.1.1 [[#407]](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/407)
* Update paambaati/codeclimate-action action to v6 [[#406]](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/406)
* Configure Renovate [[#387]](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/387)
* Update codeclimate channel to the latest in manageiq-style [[#403]](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/403)
* [RADJABOV] Test radjabov with ruby 3.1 [[#402]](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/402)
* Test with ruby 3.1 and 3.0 [[#401]](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/401)
* Drop require_nested and include_concern [[#400]](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/400)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-nsxt](https://github.com/ManageIQ/manageiq-providers-nsxt/compare/quinteros-2.2...radjabov-1)

### Bug

* Revert "Upgrade package to 2.0.1" [[#106]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/106)

### Other

* [RADJABOV] Lockdown Ruby version to Ruby 3.3 [[#130]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/130)
* Testing with ruby 3.2, 3.3 [[#129]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/129)
* Use ruby 3.1 for code coverage [[#127]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/127)
* Update Yarn to v4.3.1 [[#123]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/123)
* Update paambaati/codeclimate-action action to v8 [[#122]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/122)
* Update Yarn to v4.3.0 [[#121]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/121)
* Update paambaati/codeclimate-action action to v6 [[#119]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/119)
* Configure Renovate [[#86]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/86)
* Upgrade package to 2.0.1 [[#104]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/104)
* Update yarn to v4.2.2 [[#103]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/103)
* Update yarn to stable v4.2.1 [[#102]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/102)
* Update yarn to stable v4.1.1 [[#101]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/101)
* Update codeclimate channel to the latest in manageiq-style [[#100]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/100)
* [RADJABOV] Test radjabov with ruby 3.1 [[#99]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/99)
* Test with ruby 3.1 and 3.0 [[#98]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/98)
* Drop require_nested [[#97]](https://github.com/ManageIQ/manageiq-providers-nsxt/pull/97)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-nuage](https://github.com/ManageIQ/manageiq-providers-nuage/compare/quinteros-2.2...radjabov-1)

### Bug

* Add zone_id to provider validationDependencies [[#303]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/303)

### Enhancement

* Avoid loading client libraries at code load time for domain classes. [[#314]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/314)

### Other

* Use ubuntu-24.04 to fix libqpid-proton11 install [[#326]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/326)
* [RADJABOV] Lockdown Ruby version to Ruby 3.3 [[#323]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/323)
* Testing with ruby 3.2, 3.3 [[#322]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/322)
* Update paambaati/codeclimate-action action to v9 [[#320]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/320)
* Use ruby 3.1 for code coverage [[#318]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/318)
* Update Yarn to v4.3.1 [[#317]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/317)
* Update Yarn to v4.3.0 [[#315]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/315)
* Update paambaati/codeclimate-action action to v8 [[#316]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/316)
* Update Yarn to v4.2.2 [[#313]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/313)
* Update Yarn to v4.2.1 [[#312]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/312)
* Update Yarn to v4.2.0 [[#308]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/308)
* Update yarn to stable v4.1.1 [[#311]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/311)
* Update paambaati/codeclimate-action action to v6 [[#310]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/310)
* Configure Renovate [[#289]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/289)
* Update codeclimate channel to the latest in manageiq-style [[#307]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/307)
* [RADJABOV] Test radjabov with ruby 3.1 [[#306]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/306)
* Test with ruby 3.1 and 3.0 [[#305]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/305)
* Drop require_nested [[#304]](https://github.com/ManageIQ/manageiq-providers-nuage/pull/304)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-openshift](https://github.com/ManageIQ/manageiq-providers-openshift/compare/quinteros-2.2...radjabov-1)

### Bug

* Fix OSV DDF form pivot value [[#277]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/277)
* Delegate refresh_ems class method to parent container manager [[#272]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/272)
* Fix refresh worker partial refresh error [[#269]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/269)
* Fix Openshift Infra RefreshWorker not starting [[#267]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/267)
* Fix full refresh error when running a RefreshWorker [[#268]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/268)
* Lock down recursive-open-struct to 1.2.2 [[#271]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/271)

### Enhancement

* Openshift Virtualization VM Metrics Capture [[#275]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/275)
* Openshift Virtualization Events Capture [[#273]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/273)
* Openshift Virtualization Service Catalog Support [[#266]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/266)
* Subclass Kubevirt InfraManager to separate Openshift Virtualization provider [[#264]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/264)
* Add annotations to custom attributes on summary pages for routes and templates [[#262]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/262)

### Other

* [RADJABOV] Lockdown Ruby version to Ruby 3.3 [[#274]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/274)
* Testing with ruby 3.2, 3.3 [[#270]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/270)
* Update paambaati/codeclimate-action action to v9 [[#265]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/265)
*  Use ruby 3.1 for code coverage [[#263]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/263)
* Update paambaati/codeclimate-action action to v8 [[#261]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/261)
* Update paambaati/codeclimate-action action to v6 [[#260]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/260)
* Configure Renovate [[#246]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/246)
* Remove MonitoringManager [[#257]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/257)
* Update codeclimate channel to the latest in manageiq-style [[#258]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/258)
* drop use of unsupported_reason_add [[#255]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/255)
* [RADJABOV] Test radjabov with ruby 3.1 [[#256]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/256)
* Test with ruby 3.1 and 3.0 [[#254]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/254)
* Drop require_nested  [[#253]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/253)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-openstack](https://github.com/ManageIQ/manageiq-providers-openstack/compare/quinteros-2.2...radjabov-1)

### Bug

* Delegate refresh_ems class method to parent cloud manager [[#895]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/895)
* Rescue VM volume attachments NotFound [[#884]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/884)
* Only check for duplicate endpoints for CloudManagers [[#877]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/877)
* Add zone_id to provider validationDependencies [[#870]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/870)

### Enhancement

* Provide backward compatible way to globally set permitted classes [[#885]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/885)

### Other

* Use ubuntu-24.04 to fix libqpid-proton11 [[#897]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/897)
* [RADJABOV] Lockdown Ruby version to Ruby 3.3 [[#896]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/896)
* Testing with ruby 3.2, 3.3 [[#891]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/891)
* Update paambaati/codeclimate-action action to v9 [[#889]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/889)
* Use ruby 3.1 for code coverage [[#887]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/887)
* Use Rails 7 way to set yaml permitted classes [[#888]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/888)
* Update paambaati/codeclimate-action action to v8 [[#883]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/883)
* Update paambaati/codeclimate-action action to v6 [[#882]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/882)
* fix spec for supports_feature change [[#880]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/880)
* Configure Renovate [[#850]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/850)
* drop unsupported_reason_add and supports_event? [[#875]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/875)
* Update codeclimate channel to the latest in manageiq-style [[#876]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/876)
* [RADJABOV] Test radjabov with ruby 3.1 [[#874]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/874)
* Delete an unused NetworkManager MetricsCollectorWorker Runner class [[#873]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/873)
* Test with ruby 3.1 and 3.0 [[#872]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/872)
* Drop require_nested and include_concern [[#871]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/871)
* Allow rails 7 gems in gemspec [[#868]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/868)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-oracle_cloud](https://github.com/ManageIQ/manageiq-providers-oracle_cloud/compare/quinteros-2.2...radjabov-1)

### Bug

* Install libsodium-dev [[#102]](https://github.com/ManageIQ/manageiq-providers-oracle_cloud/pull/102)

### Other

* [RADJABOV] Lockdown Ruby version to Ruby 3.3 [[#110]](https://github.com/ManageIQ/manageiq-providers-oracle_cloud/pull/110)
* Test with Ruby 3.1 and 3.3 [[#109]](https://github.com/ManageIQ/manageiq-providers-oracle_cloud/pull/109)
* Testing with ruby 3.2, 3.3 [[#107]](https://github.com/ManageIQ/manageiq-providers-oracle_cloud/pull/107)
* Update paambaati/codeclimate-action action to v9 [[#106]](https://github.com/ManageIQ/manageiq-providers-oracle_cloud/pull/106)
* Use ruby 3.1 for code coverage [[#105]](https://github.com/ManageIQ/manageiq-providers-oracle_cloud/pull/105)
* Update paambaati/codeclimate-action action to v8 [[#104]](https://github.com/ManageIQ/manageiq-providers-oracle_cloud/pull/104)
* Update paambaati/codeclimate-action action to v6 [[#103]](https://github.com/ManageIQ/manageiq-providers-oracle_cloud/pull/103)
* Configure Renovate [[#87]](https://github.com/ManageIQ/manageiq-providers-oracle_cloud/pull/87)
* Update codeclimate channel to the latest in manageiq-style [[#99]](https://github.com/ManageIQ/manageiq-providers-oracle_cloud/pull/99)
* [RADJABOV] Test radjabov with ruby 3.1 [[#98]](https://github.com/ManageIQ/manageiq-providers-oracle_cloud/pull/98)
* drop use of unsupported_reason_add [[#97]](https://github.com/ManageIQ/manageiq-providers-oracle_cloud/pull/97)
* Test with ruby 3.1 and 3.0 [[#96]](https://github.com/ManageIQ/manageiq-providers-oracle_cloud/pull/96)
* Drop require_nested [[#95]](https://github.com/ManageIQ/manageiq-providers-oracle_cloud/pull/95)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-ovirt](https://github.com/ManageIQ/manageiq-providers-ovirt/compare/quinteros-2.2...radjabov-1)

### Bug

* Fix typo in Ovirt VM supports?(:smartstate_analysis) [[#674]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/674)
* Fix EventTargetParser looking for string keys [[#671]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/671)
* Remove return from supports block [[#672]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/672)
* Add controller prefix to disk location column [[#662]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/662)
* Check supported storage type for vm Smartstate analysis scan [[#653]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/653)

### Enhancement

* Delay load the ovirt_metrics and ovirtsdk4 client libraries [[#667]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/667)

### Other

* [RADJABOV] Lockdown Ruby version to Ruby 3.3 [[#682]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/682)
* Testing with ruby 3.2, 3.3 [[#678]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/678)
* Remove newlines from error message [[#677]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/677)
* Update ovirt-engine-sdk to 4.6 [[#676]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/676)
* Update paambaati/codeclimate-action action to v9 [[#675]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/675)
* Use ruby 3.1 for code coverage [[#673]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/673)
* Update paambaati/codeclimate-action action to v8 [[#669]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/669)
* Update paambaati/codeclimate-action action to v6 [[#666]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/666)
* Configure Renovate [[#642]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/642)
* Update codeclimate channel to the latest in manageiq-style [[#661]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/661)
* [RADJABOV] Test radjabov with ruby 3.1 [[#660]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/660)
* drop use of unuspported_reason_add [[#659]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/659)
* Test with ruby 3.1 and 3.0 [[#658]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/658)
* Set minimum version to support rails 7 [[#657]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/657)
* Drop require_nested and include_concern [[#656]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/656)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-red_hat_virtualization](https://github.com/ManageIQ/manageiq-providers-red_hat_virtualization/compare/quinteros-2.2...radjabov-1)

### Bug

* Fix EventTargetParser looking for string keys [[#51]](https://github.com/ManageIQ/manageiq-providers-red_hat_virtualization/pull/51)

### Other

* [RADJABOV] Lockdown Ruby version to Ruby 3.3 [[#57]](https://github.com/ManageIQ/manageiq-providers-red_hat_virtualization/pull/57)
* Test with ruby 3.3 [[#56]](https://github.com/ManageIQ/manageiq-providers-red_hat_virtualization/pull/56)
* upgrade ovirt to 4.6 [[#54]](https://github.com/ManageIQ/manageiq-providers-red_hat_virtualization/pull/54)
* Update paambaati/codeclimate-action action to v9 [[#53]](https://github.com/ManageIQ/manageiq-providers-red_hat_virtualization/pull/53)
* Use ruby 3.1 code coverage [[#52]](https://github.com/ManageIQ/manageiq-providers-red_hat_virtualization/pull/52)
* Update paambaati/codeclimate-action action to v8 [[#50]](https://github.com/ManageIQ/manageiq-providers-red_hat_virtualization/pull/50)
* Delay load ovirtsdk4 client library [[#49]](https://github.com/ManageIQ/manageiq-providers-red_hat_virtualization/pull/49)
* Update paambaati/codeclimate-action action to v6 [[#48]](https://github.com/ManageIQ/manageiq-providers-red_hat_virtualization/pull/48)
* Add controller prefix to disk location column [[#46]](https://github.com/ManageIQ/manageiq-providers-red_hat_virtualization/pull/46)
* Configure Renovate [[#28]](https://github.com/ManageIQ/manageiq-providers-red_hat_virtualization/pull/28)
* Update codeclimate channel to the latest in manageiq-style [[#45]](https://github.com/ManageIQ/manageiq-providers-red_hat_virtualization/pull/45)
* drop unsupported_reason_add [[#43]](https://github.com/ManageIQ/manageiq-providers-red_hat_virtualization/pull/43)
* [RADJABOV] Test radjabov with ruby 3.1 [[#44]](https://github.com/ManageIQ/manageiq-providers-red_hat_virtualization/pull/44)
* Test with ruby 3.1 and 3.0 [[#42]](https://github.com/ManageIQ/manageiq-providers-red_hat_virtualization/pull/42)
* Set minimum version to support rails 7 [[#41]](https://github.com/ManageIQ/manageiq-providers-red_hat_virtualization/pull/41)
* Drop require_nested and include_concern [[#40]](https://github.com/ManageIQ/manageiq-providers-red_hat_virtualization/pull/40)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-redfish](https://github.com/ManageIQ/manageiq-providers-redfish/compare/quinteros-2.2...radjabov-1)

### Bug

* Handle `nil` Chassis Members [[#189]](https://github.com/ManageIQ/manageiq-providers-redfish/pull/189)
* Add zone_id to provider validationDependencies [[#186]](https://github.com/ManageIQ/manageiq-providers-redfish/pull/186)

### Other

* [RADJABOV] Lockdown Ruby version to Ruby 3.3 [[#208]](https://github.com/ManageIQ/manageiq-providers-redfish/pull/208)
* Testing with ruby 3.2, 3.3 [[#207]](https://github.com/ManageIQ/manageiq-providers-redfish/pull/207)
* Update paambaati/codeclimate-action action to v9 [[#205]](https://github.com/ManageIQ/manageiq-providers-redfish/pull/205)
* Use ruby 3.1 for code coverage [[#203]](https://github.com/ManageIQ/manageiq-providers-redfish/pull/203)
* Update Yarn to v4.3.1 [[#202]](https://github.com/ManageIQ/manageiq-providers-redfish/pull/202)
* Update Yarn to v4.3.0 [[#199]](https://github.com/ManageIQ/manageiq-providers-redfish/pull/199)
* Update paambaati/codeclimate-action action to v8 [[#201]](https://github.com/ManageIQ/manageiq-providers-redfish/pull/201)
* Update Yarn to v4.2.2 [[#198]](https://github.com/ManageIQ/manageiq-providers-redfish/pull/198)
* Update Yarn to v4.2.1 [[#197]](https://github.com/ManageIQ/manageiq-providers-redfish/pull/197)
* Update Yarn to v4.2.0 [[#192]](https://github.com/ManageIQ/manageiq-providers-redfish/pull/192)
* Update yarn to stable v4.1.1 [[#196]](https://github.com/ManageIQ/manageiq-providers-redfish/pull/196)
* Update paambaati/codeclimate-action action to v6 [[#195]](https://github.com/ManageIQ/manageiq-providers-redfish/pull/195)
* Configure Renovate [[#175]](https://github.com/ManageIQ/manageiq-providers-redfish/pull/175)
* Update codeclimate channel to the latest in manageiq-style [[#191]](https://github.com/ManageIQ/manageiq-providers-redfish/pull/191)
* [RADJABOV] Test radjabov with ruby 3.1 [[#190]](https://github.com/ManageIQ/manageiq-providers-redfish/pull/190)
* Test with ruby 3.1 and 3.0 [[#188]](https://github.com/ManageIQ/manageiq-providers-redfish/pull/188)
* Drop require_nested and include_concern [[#187]](https://github.com/ManageIQ/manageiq-providers-redfish/pull/187)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-vmware](https://github.com/ManageIQ/manageiq-providers-vmware/compare/quinteros-2.2...radjabov-1)

### Bug

* Add specs for nic_settings customization [[#927]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/927)
* Delegate refresh_ems class method to parent cloud manager [[#925]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/925)
* Fix Vm#set_description error [[#922]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/922)
* Continue refresh if cis_connect fails [[#917]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/917)
* remove return from supports blocks [[#915]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/915)
* Fix VM Provision datastore location class [[#911]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/911)
* Fix missing log service name for non-rails event catcher [[#905]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/905)
* Fix Host default_authentication_type [[#895]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/895)
* Fix VM terminate showing supported when running [[#897]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/897)
* Add zone_id to vcloud amqp validationDependencies [[#896]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/896)
* Add supports storage smartstate_analysis [[#887]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/887)

### Enhancement

* Testing with ruby 3.2, 3.3 [[#923]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/923)
* Add VMware vSphere 8.0U3 support [[#916]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/916)
* Catch a Handsoap Fault when logging a user event [[#912]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/912)
* Don't require bunny client library at code load time [[#910]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/910)
* Enable non-rails event catcher by default [[#894]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/894)

### Other

* [RADJABOV] Lockdown Ruby version to Ruby 3.3 [[#929]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/929)
* Bump ffi-vix_disklib to v1.4 for v8.0.3 support [[#924]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/924)
* Update paambaati/codeclimate-action action to v9 [[#919]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/919)
* Use ruby 3.1 for code coverage [[#918]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/918)
* Update paambaati/codeclimate-action action to v8 [[#913]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/913)
* Update paambaati/codeclimate-action action to v6 [[#908]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/908)
* stub the proper class for stub_supports [[#907]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/907)
* Configure Renovate [[#872]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/872)
* Update codeclimate channel to the latest in manageiq-style [[#903]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/903)
* drop unsupported_reason_add [[#901]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/901)
* [RADJABOV] Test radjabov with ruby 3.1 [[#902]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/902)
* Test with ruby 3.1 and 3.0 [[#900]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/900)
* Set minimum version to support rails 7 [[#899]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/899)
* Drop require_nested and include_concern [[#898]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/898)
* Ruby 3.1: Specify vim classes as permitted in test [[#892]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/892)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-workflows](https://github.com/ManageIQ/manageiq-providers-workflows/compare/quinteros-2.2...radjabov-1)

### Bug

* Skip invalid workflows during sync [[#124]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/124)
* Fix floe bug with Parallel/Map on Kubernetes [[#123]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/123)
* Add object_type,_id to WorkflowInstance#run_queue [[#121]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/121)
* Fix floe container_runner options not being honored [[#106]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/106)
* Add back prototype workflows enabled [[#104]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/104)
* Check that the requested configuration_script_payload record is an EmbeddedAnsible Playbook [[#98]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/98)
* Fix BuiltinMethods.email task status spec [[#93]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/93)
* Fix BuiltinMethods.miq_request_task_status! [[#91]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/91)
* Add specs for BuiltinMethods [[#89]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/89)
* Don't pass Config::Options in for Runner settings [[#68]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/68)
* Fix tasks staying active for failed workflows [[#67]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/67)
* Ensure WorkflowInstance#credentials is not nil [[#66]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/66)
* Handle the case where `:credentials` column is `nil` [[#64]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/64)

### Enhancement

* Update floe to v0.15.0 [[#119]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/119)
* Use WorkflowInstance#manager_ref and execution_id for events [[#113]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/113)
* Use workflow_instance manager_ref as Execution ID [[#112]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/112)
* Add event driven workflows runner [[#102]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/102)
* Pass requester userid and email into workflows [[#105]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/105)
* Add an embedded_ansible builtin method [[#86]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/86)
* Default email from [[#97]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/97)
* Rename 'builtin' scheme to 'manageiq' [[#96]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/96)
* Fail seeding on invalid out of the box workflows. [[#95]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/95)
* automatically update options for provisioning requests [[#94]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/94)
* Improve BuiltinMethods.provision_execute error checking [[#88]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/88)
* Add builtin method: provision_execute [[#81]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/81)
* pass object to workflow instance [[#85]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/85)
* Move checking builtin method status into Methods [[#84]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/84)
* Workflow#run accepts context [[#83]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/83)
* Add Builtin Runner with Email example method [[#80]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/80)
* Update to use Floe.register_scheme API [[#82]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/82)
* Add workflows credential type [[#77]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/77)
* Add Settings.ems.ems_workflows.runner [[#75]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/75)
* Seed workflows from plugins' content/workflows [[#57]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/57)
* Use new Floe.set_runner syntax [[#63]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/63)
* Add the ability to set runner_options in Settings [[#65]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/65)
* Update `:credentials` column if state sets a new credential [[#62]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/62)

### Other

* [RADJABOV] Lockdown Ruby version to Ruby 3.3 [[#122]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/122)
* test with ruby 3.3 [[#120]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/120)
* Remove non-existing parent factory references [[#118]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/118)
* Workflows Runner event log should be debug [[#117]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/117)
* Update paambaati/codeclimate-action action to v9 [[#114]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/114)
* Don't warn about `$workflows_log` [[#110]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/110)
* Bump floe to v0.13.0 for Intrinsic Functions [[#111]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/111)
*  Use ruby 3.1 for code coverage [[#108]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/108)
* Bump floe to v0.12.0 [[#107]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/107)
* Drop workflows prototype settings [[#103]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/103)
* Update paambaati/codeclimate-action action to v8 [[#100]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/100)
* Only allow provision execute MiqProvision objects [[#92]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/92)
* Fix error!/success! calls from BuiltinMethods [[#90]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/90)
* Some minor refactorings to BuiltinMethods / BuiltinRunner [[#87]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/87)
* Update paambaati/codeclimate-action action to v6 [[#79]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/79)
* Set workflow description from asl comment [[#76]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/76)
* Configure Renovate [[#21]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/21)
* Update codeclimate channel to the latest in manageiq-style [[#72]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/72)
* [RADJABOV] Test radjabov with ruby 3.1 [[#71]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/71)
* Test with ruby 3.1 and 3.0 [[#70]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/70)
* Drop require_nested [[#69]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/69)
* Run apt-get update before install in bin/before_install [[#61]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/61)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-rpm_build](https://github.com/ManageIQ/manageiq-rpm_build/compare/quinteros-2.2...radjabov-1)

### Bug

* cockpit-ssh is not available in CentOS Stream 9 [[#552]](https://github.com/ManageIQ/manageiq-rpm_build/pull/552)
* Don't include newer openssl packages from CentOS Stream [[#559]](https://github.com/ManageIQ/manageiq-rpm_build/pull/559)
* Fix issues where exitstatus could be nil [[#538]](https://github.com/ManageIQ/manageiq-rpm_build/pull/538)
* Move paramiko into Dockerfile. [[#524]](https://github.com/ManageIQ/manageiq-rpm_build/pull/524)
* [RADJABOV] Fix radjabov refs by reverting the initial changes to the branch [[#523]](https://github.com/ManageIQ/manageiq-rpm_build/pull/523)
* openssl-libs is already installed in newer UBI9 [[#520]](https://github.com/ManageIQ/manageiq-rpm_build/pull/520)
* remove aiohttp [[#504]](https://github.com/ManageIQ/manageiq-rpm_build/pull/504)
* Add manageiq_podman_cleanup oneshot service [[#506]](https://github.com/ManageIQ/manageiq-rpm_build/pull/506)
* Update azure keyvault to avoid parsing error [[#503]](https://github.com/ManageIQ/manageiq-rpm_build/pull/503)
* Update ansible requirements.txt for vmware aws [[#495]](https://github.com/ManageIQ/manageiq-rpm_build/pull/495)
* Fix service ui productization symlinking [[#478]](https://github.com/ManageIQ/manageiq-rpm_build/pull/478)
* Revert "Merge pull request #458 from bdunne/openssl_fix_2" [[#491]](https://github.com/ManageIQ/manageiq-rpm_build/pull/491)
* Openssl lockdown to <v3.2 [[#458]](https://github.com/ManageIQ/manageiq-rpm_build/pull/458)
* [radjabov] Allow timestamped release builds [[#490]](https://github.com/ManageIQ/manageiq-rpm_build/pull/490)
* Allow timestamped release builds [[#489]](https://github.com/ManageIQ/manageiq-rpm_build/pull/489)
* [quinteros] Allow timestamped release builds [[#482]](https://github.com/ManageIQ/manageiq-rpm_build/pull/482)
* Fix already broken rsyslog on appliances [[#486]](https://github.com/ManageIQ/manageiq-rpm_build/pull/486)
* \s+ wasn't matching multiple spaces and failed to match the last line commenting out the rest of the file. [[#484]](https://github.com/ManageIQ/manageiq-rpm_build/pull/484)
* Fix RPM Build unpackaged file error [[#471]](https://github.com/ManageIQ/manageiq-rpm_build/pull/471)
* Redownload during bundle install to include default gems [[#468]](https://github.com/ManageIQ/manageiq-rpm_build/pull/468)
* [radjabov] Openssl lockdown to <v3.2 [[#459]](https://github.com/ManageIQ/manageiq-rpm_build/pull/459)
* Switch from UBI openssl-libs to Stream openssl-libs [[#457]](https://github.com/ManageIQ/manageiq-rpm_build/pull/457)
* Temporarily lock down to ruby 3.1.2-142 [[#454]](https://github.com/ManageIQ/manageiq-rpm_build/pull/454)
* These files are no longer used in EL9 [[#449]](https://github.com/ManageIQ/manageiq-rpm_build/pull/449)
* Simplify permissions for kafka and zookeeper [[#446]](https://github.com/ManageIQ/manageiq-rpm_build/pull/446)
* Don't automatically detect provides and requires [[#444]](https://github.com/ManageIQ/manageiq-rpm_build/pull/444)
* python cryptography requires rust [[#439]](https://github.com/ManageIQ/manageiq-rpm_build/pull/439)
* Add ansible-core 2.12.7 to our repos [[#438]](https://github.com/ManageIQ/manageiq-rpm_build/pull/438)
* Add manageiq user to disk group [[#435]](https://github.com/ManageIQ/manageiq-rpm_build/pull/435)

### Enhancement

* Build rpms using ruby 3.3 [[#517]](https://github.com/ManageIQ/manageiq-rpm_build/pull/517)
* Python requirements update [[#493]](https://github.com/ManageIQ/manageiq-rpm_build/pull/493)
* Disable rsyslog duplication of systemd-journal [[#426]](https://github.com/ManageIQ/manageiq-rpm_build/pull/426)
* Add an appliance-only properties file [[#464]](https://github.com/ManageIQ/manageiq-rpm_build/pull/464)
* Add postgresql-contrib package [[#461]](https://github.com/ManageIQ/manageiq-rpm_build/pull/461)
* Add opentofu-runner service [[#450]](https://github.com/ManageIQ/manageiq-rpm_build/pull/450)
* create an alias on upgrade [[#408]](https://github.com/ManageIQ/manageiq-rpm_build/pull/408)

### Other

* [RADJABOV] Lockdown Ruby version to Ruby 3.3 [[#522]](https://github.com/ManageIQ/manageiq-rpm_build/pull/522)
* Update ansible azure storage blob [[#519]](https://github.com/ManageIQ/manageiq-rpm_build/pull/519)
* Upgrade azure-datalake dependency [[#511]](https://github.com/ManageIQ/manageiq-rpm_build/pull/511)
* Fix performance issue of looking up rpms [[#510]](https://github.com/ManageIQ/manageiq-rpm_build/pull/510)
* System rpm updates for paramiko and zipp [[#509]](https://github.com/ManageIQ/manageiq-rpm_build/pull/509)
* Update requirements for python dependencies [[#508]](https://github.com/ManageIQ/manageiq-rpm_build/pull/508)
* Revert "Temporarily lock down to ruby 3.1.2-142" [[#456]](https://github.com/ManageIQ/manageiq-rpm_build/pull/456)
* Remove any Gemfile.lock files shipped in gems [[#452]](https://github.com/ManageIQ/manageiq-rpm_build/pull/452)
* Upgrade to kafka v3.7.0 on openjdk-11 [[#447]](https://github.com/ManageIQ/manageiq-rpm_build/pull/447)
* Update codeclimate channel to the latest in manageiq-style [[#448]](https://github.com/ManageIQ/manageiq-rpm_build/pull/448)
* We're el9 only now, drop el8 repos on master [[#445]](https://github.com/ManageIQ/manageiq-rpm_build/pull/445)
* Upgrade to UBI9 [[#440]](https://github.com/ManageIQ/manageiq-rpm_build/pull/440)
* Drop WMI preparing for EL9 [[#442]](https://github.com/ManageIQ/manageiq-rpm_build/pull/442)
* Update repmgr for EL9 [[#443]](https://github.com/ManageIQ/manageiq-rpm_build/pull/443)
* Update peter-evans/repository-dispatch to v3 [[#441]](https://github.com/ManageIQ/manageiq-rpm_build/pull/441)
* Ruby 3.1 [[#429]](https://github.com/ManageIQ/manageiq-rpm_build/pull/429)
* Faster rpm build step [[#437]](https://github.com/ManageIQ/manageiq-rpm_build/pull/437)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-schema](https://github.com/ManageIQ/manageiq-schema/compare/quinteros-2.2...radjabov-1)

### Bug

* Fix broken ci.yaml [[#766]](https://github.com/ManageIQ/manageiq-schema/pull/766)
* Handle cases where the database connection does not use a password [[#763]](https://github.com/ManageIQ/manageiq-schema/pull/763)
* Reset resource_pool_infra product features [[#752]](https://github.com/ManageIQ/manageiq-schema/pull/752)
* Migration for adding vault_credential_id in ServiceTemplate option [[#734]](https://github.com/ManageIQ/manageiq-schema/pull/734)
* Update audit managed resources queue task [[#720]](https://github.com/ManageIQ/manageiq-schema/pull/720)
* Remove Openstack NetworkManager metrics worker records [[#717]](https://github.com/ManageIQ/manageiq-schema/pull/717)
* Fix OrchestrationStack#configuration_script reference [[#714]](https://github.com/ManageIQ/manageiq-schema/pull/714)

### Enhancement

* Add rails 7.1 and 7.2 support [[#756]](https://github.com/ManageIQ/manageiq-schema/pull/756)
* Add a migration to encrypt database password using scram-sha-256 [[#757]](https://github.com/ManageIQ/manageiq-schema/pull/757)
* Use core minimum but allow 7.0/7.1/7.2 since core sets upper limit [[#754]](https://github.com/ManageIQ/manageiq-schema/pull/754)
* Update resource pool feature identifiers to infrastructure-specific [[#718]](https://github.com/ManageIQ/manageiq-schema/pull/718)
* Migrate existing product features to handle renames from core 22971 [[#731]](https://github.com/ManageIQ/manageiq-schema/pull/731)

### Other

* [RADJABOV] Lockdown Ruby version to Ruby 3.3 [[#769]](https://github.com/ManageIQ/manageiq-schema/pull/769)
* Allow test failures on 7.1 and 7.2 for now [[#767]](https://github.com/ManageIQ/manageiq-schema/pull/767)
* Testing with ruby 3.2, 3.3 [[#765]](https://github.com/ManageIQ/manageiq-schema/pull/765)
* Bump the rails gem minimum for CVEs [[#762]](https://github.com/ManageIQ/manageiq-schema/pull/762)
* Testing with ruby 3.2, 3.3 [[#755]](https://github.com/ManageIQ/manageiq-schema/pull/755)
* Update dummy app to Rails 7.0.8.4 [[#750]](https://github.com/ManageIQ/manageiq-schema/pull/750)
* Cleanup naming of the migration [[#749]](https://github.com/ManageIQ/manageiq-schema/pull/749)
* Update paambaati/codeclimate-action action to v9 [[#747]](https://github.com/ManageIQ/manageiq-schema/pull/747)
* Drop no longer used linux_admin requirement [[#746]](https://github.com/ManageIQ/manageiq-schema/pull/746)
* Use ruby 3.1 and rails 7 for code coverage [[#741]](https://github.com/ManageIQ/manageiq-schema/pull/741)
* Ensure a minimum version of manageiq-style [[#740]](https://github.com/ManageIQ/manageiq-schema/pull/740)
* Update paambaati/codeclimate-action action to v8 [[#739]](https://github.com/ManageIQ/manageiq-schema/pull/739)
* Remove code for unsupported rails versions [[#736]](https://github.com/ManageIQ/manageiq-schema/pull/736)
* Allow rails 7 gems in gemspec [[#715]](https://github.com/ManageIQ/manageiq-schema/pull/715)
* Backward compatible rails 7 changes [[#735]](https://github.com/ManageIQ/manageiq-schema/pull/735)
* Bump linux_admin to 3.0 for net-ssh fix [[#733]](https://github.com/ManageIQ/manageiq-schema/pull/733)
* Update paambaati/codeclimate-action action to v6 [[#732]](https://github.com/ManageIQ/manageiq-schema/pull/732)
* Configure Renovate [[#693]](https://github.com/ManageIQ/manageiq-schema/pull/693)
* Update codeclimate channel to the latest in manageiq-style [[#723]](https://github.com/ManageIQ/manageiq-schema/pull/723)
* Remove Kubernetes/Openshift Monitoring Managers [[#722]](https://github.com/ManageIQ/manageiq-schema/pull/722)
* [RADJABOV] Test radjabov with ruby 3.1 [[#719]](https://github.com/ManageIQ/manageiq-schema/pull/719)
* Test with ruby 3.1 and 3.0 [[#716]](https://github.com/ManageIQ/manageiq-schema/pull/716)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-ui-classic](https://github.com/ManageIQ/manageiq-ui-classic/compare/quinteros-2.2...radjabov-1)

### Bug

* Fix table pagination setting [[#9324]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9324)
* Fix Key Value List Component Typing Bug [[#9304]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9304)
* Fix request form automation fields [[#9220]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9220)
* Fix generic object embedded table [[#9266]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9266)
* Fix explorer title width [[#9290]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9290)
* Fix Chrome autofilling password when editing a schema [[#9296]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9296)
* Fix issue when using kerberos auth with Rails 7 [[#9295]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9295)
* Add bundler path [[#9294]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9294)
* Fix bin/webpack when ui-classic not bundled [[#9293]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9293)
* Remove newlines from result message [[#9278]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9278)
* Fix a typo in the fork name [[#9267]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9267)
* Fix ae method workflow template summary page [[#9251]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9251)
* Revert cloud resource pools [[#9257]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9257)
* Drop include_concern in ResourcePool Helpers [[#9254]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9254)
* Fix the VM Infra button checking EmsCloud providers [[#9249]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9249)
* Wrap the uglifier compressor with harmony support [[#9245]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9245)
* Fix provider charts tooltip [[#9224]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9224)
* Use uglifier harmony mode to handle es6 syntax with rails 7 [[#9244]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9244)
* Fix translation issues [[#9242]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9242)
* Fix textual summary duplication bug [[#9228]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9228)
* Ignore the latest bootstrap vulnerability until we can upgrade [[#9237]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9237)
* Fix variable table spacing [[#9211]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9211)
* Fix automate specs [[#9226]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9226)
* Prepend ActionView::Helpers::NumberHelper with our NumberHelper [[#9119]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9119)
* Fix child services link [[#9207]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9207)
* Hide policy simulation button [[#9205]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9205)
* Update Workflow State icons [[#9200]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9200)
* Fix survey table readability [[#9199]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9199)
* Show volume templates in image list view [[#9198]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9198)
* Fix guest devices summary page [[#9197]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9197)
* Remove current workflow state if its done [[#9195]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9195)
* Fix for vault credentials in service-catalog's provisioning and retirement summary [[#9184]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9184)
* Fix ansible tower and embedded workflows lists [[#9181]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9181)
* Fix workflow states table [[#9186]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9186)
* Fix output page toolbar bugs [[#9168]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9168)
* Fix vm reconfigure form privelages [[#9173]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9173)
* Fix request page tags bug [[#9174]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9174)
* Fix failing terraform rbac specs [[#9177]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9177)
* Fixed schedule summary page request value [[#9170]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9170)
* Don't double require rails environment [[#9169]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9169)
* Fixed missing surveys table [[#9144]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9144)
* Fix embedded page toolbars [[#9140]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9140)
* Fix Optimization Queue Report [[#9146]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9146)
* Fix workflow credentials page link to repositories [[#9131]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9131)
* Fix workflow credentials side menu [[#9136]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9136)
* Fix taggings issue while adding or removing assigned filters to user groups [[#9120]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9120)
* Fixed bug with deleting group tags [[#9116]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9116)
* Fix action form tag bug [[#9114]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9114)
* Fixed events search bar [[#9107]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9107)
* Update Remote Region Button in Vm Summary Page to React [[#9098]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9098)
* Fix duplicate DOM ID warning in automate modal form [[#9096]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9096)
* Fixed Incorrect Values Being Displayed When Editing Action [[#9094]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9094)
* Remove usage of eval functions [[#9081]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9081)
* Fix redirects for action form [[#9090]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9090)
* Added search bars to control pages [[#9092]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9092)
* fix hostname error [[#9078]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9078)
* Fixed Empty Applied Tag Section in Control Actions Summary Page [[#9086]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9086)
* Fix Embededded Typos [[#9085]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9085)
* Disable ip address fields when dhcp is selected [[#9063]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9063)
* Fix dashboard missing chart [[#9061]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9061)
* Fix for the error messages in Request-info tabs in the Service catalog item summary pages [[#9030]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9030)
* Fix EMS network "Region" text [[#9050]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9050)
* Filter vlans by switch and then lan [[#9036]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9036)
* Fixed Empty TableListView for Some Summary Pages [[#9039]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9039)
* Updated RecordId in Edit Management Engine Form [[#9038]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9038)
* Fixed `no implicit conversion of String into Integer` Error when Adding/Editing Container Provider [[#9025]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9025)
* Fix task details page [[#9026]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9026)
* filter vms displayed in tree lan [[#8998]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8998)
* Fix duplicate notifications and toasters [[#8867]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8867)
* Fix dashboard initial tab [[#9011]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9011)
* Fix trailing space for hostname in container provider form [[#9003]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9003)
* Fix warning for image with no title in structured list [[#9008]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9008)
* Fix for Error When Trying to Select a Namespace [[#9006]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9006)
* Return Username Field to "LDAP Group Look Up" Section [[#8996]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8996)

### Enhancement

* Making tags more readable [[#9320]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9320)
* Add option to create new dialog for terraform template in service catalog item [[#9273]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9273)
* Show Terraform Template stack stdout [[#9285]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9285)
* Use core minimum but allow 7.0/7.1/7.2 since core sets upper limit [[#9274]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9274)
* Add locale:po_to_json github action [[#9263]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9263)
* Add Resource Pool UI for Cloud managers [[#8929]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8929)
* Use npmAuditExcludePackages instead of npmAuditIgnoreAdvisories [[#9241]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9241)
* Filtering and selecting embedded methods used in the inline-methods form pages [[#9059]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9059)
* Convert provision dialog summary form to React [[#9230]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9230)
* Provision Dialog Form conversion from HAML to React [[#9188]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9188)
* Add annotations on container summary pages that contain labels [[#9214]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9214)
* Rails 7 compatible changes (part 1) [[#9215]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9215)
* Add current state to workflow states table and format duration time [[#9191]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9191)
* Add terraform template catalog [[#9194]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9194)
* Remove multiple title for provisioning pages [[#9171]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9171)
* UI changes to use the renamed product features from core #22971 [[#9142]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9142)
* Add embedded terraform UI changes [[#9117]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9117)
* Search feature for provisioning instance and virtual machines [[#9159]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9159)
* Fix publish virtual-machines purpose tags style [[#9160]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9160)
* Cleanup VmResize component and fix lint errors [[#9167]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9167)
* Display OS 'name' as 'Description' [[#9110]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9110)
* Add icons and provider name to a few screens [[#8887]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8887)
* Fix company tags style [[#9143]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9143)
* Save filters for request page in the session [[#9103]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9103)
* Fix assigned filter tag style [[#9125]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9125)
* Fix workers form style [[#9124]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9124)
* Added Redirects to Pods Table in Container Projects [[#9083]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9083)
* Reduce the button size from default to small in data table rows [[#9100]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9100)
* Fix styles for control action summary and form pages [[#9095]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9095)
* Button group summary page react conversion. [[#9088]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9088)
* Button summary conversion from HAML to React [[#9074]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9074)
* Fix typo in comments for ansible-playbook catalog form [[#9084]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9084)
* Fix debug toast wrapper style [[#9079]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9079)
* Add noopener noreferrer to blank targets [[#9068]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9068)
* Beautify the NotificationDrawer component [[#9065]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9065)
* Convert tasks tabs to react [[#9045]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9045)
* Convert Dashboard Widget Remove Modal to React [[#9005]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9005)
* Automate simulation summary conversion from HAML to React [[#9013]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9013)
* Improve taggings-modifier's style in service catalogs [[#9010]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9010)
* Orchestration template summary conversion from HAML to React [[#9014]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9014)
* Added New Feature That Controls Who Can See Request Logs [[#8920]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8920)
* Style improvements for dual-list component in catalog form [[#9009]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9009)
* Embedded methods list conversion from HAML to React [[#9007]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9007)
* Convert dashboard tabs to react [[#9004]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9004)
* Add tasks detail page [[#9000]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9000)
* Permit subscription classes to be serialized in queue args [[#8964]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8964)
* Fix for responsive styles for layout and summary [[#8985]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8985)

### Other

* Updated bootstrap select [[#9326]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9326)
* Update patternfly [[#9315]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9315)
* [RADJABOV] Lockdown Ruby version to Ruby 3.3 [[#9312]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9312)
* Update UI json translation files [[#9311]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9311)
* Testing with ruby 3.2, 3.3 [[#9277]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9277)
* Bump http-proxy-middleware from 2.0.6 to 2.0.7 [[#9297]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9297)
* Ensure uploaded images are image files [[#9299]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9299)
* Bump elliptic from 6.5.7 to 6.6.0 [[#9302]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9302)
* Add external auth spec [[#9298]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9298)
* Drop sass rails [[#9286]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9286)
* Remove unused miqsanitize angular code [[#9289]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9289)
* Remove unused angular verify button code [[#9288]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9288)
* Remove unused angular controllers [[#9287]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9287)
* Update angular to 1.8.3 [[#9282]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9282)
* Remove unused namespace angular code [[#9283]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9283)
* Update UI json translation files [[#9268]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9268)
* fix scss warning on division [[#9279]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9279)
* Update assignee [[#9275]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9275)
* Bump elliptic from 6.5.5 to 6.5.7 [[#9260]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9260)
* Remove unused controller stub from spec [[#9269]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9269)
* Update path-to-regexp [[#9262]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9262)
* Update lodash to 4.17.21 [[#9259]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9259)
* Update the UI translations json based on the August 30th English strings [[#9258]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9258)
* Use ruby 3.1 for code coverage [[#9238]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9238)
* Use Rails 7 way to set yaml permitted classes [[#9243]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9243)
* Rails7 test fixes [[#9231]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9231)
* Update pending yarn npm audit list [[#9239]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9239)
* Add known pending package security issues to a pending list [[#9227]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9227)
* Update moment to 2.29.2 through resolution [[#9222]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9222)
* Update carbon packages [[#9221]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9221)
* Update lodash to 4.17.12 [[#9203]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9203)
* Update Yarn to v4.3.1 [[#9213]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9213)
* Update yarn.lock with latest dependencies [[#9196]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9196)
* Update Yarn to v4.3.0 [[#9206]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9206)
* Bump ws from 5.2.3 to 5.2.4 [[#9210]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9210)
* Updated UI json for May 31st translations [[#9201]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9201)
* Update yarn.lock with latest dependencies [[#9193]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9193)
* Fix CloudObjectStoreContainerForm test [[#9178]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9178)
* Fix HostEditForm test [[#9179]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9179)
* Fix AttachDetachCloudVolumeForm test [[#9180]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9180)
* Fix CopyDashboardForm test [[#9182]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9182)
* Update yarn to v4.2.2 [[#9183]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9183)
* Update yarn.lock with latest dependencies [[#9141]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9141)
* Update yarn to stable v4.2.1 [[#9175]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9175)
* Update yarn to stable v4.1.1 [[#9172]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9172)
* Fix TreeSelector test [[#9158]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9158)
* Fix ServiceDialogFromOt test [[#9161]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9161)
* Fix CopyCatalogForm test [[#9162]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9162)
* Fix PhysicalStorageForm test for radio buttons [[#9163]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9163)
* Fix HostInitiatorGroupForm test [[#9164]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9164)
* Fix ProvGrid test [[#9165]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9165)
* Fix MiqStructuredListSub test [[#9166]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9166)
* convert ServiceTemplate.orderable? to supports?(:order) [[#9089]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9089)
* Fix RemoveCatalogItemModal test [[#9154]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9154)
* Fix MiqStructuredList test [[#9155]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9155)
* Bump tar from 6.2.0 to 6.2.1 [[#9156]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9156)
* stub_supports uses specific class [[#9153]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9153)
* Fix AnsiblePlaybookWorkflow test case [[#9128]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9128)
* Fix MiqCustomTab test cases [[#9130]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9130)
* Fix SettingsLabelTabMapping for data-tables test case [[#9132]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9132)
* Fix TimelineTable test case [[#9133]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9133)
* Fix CloudVolumeActions test [[#9145]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9145)
* Fix DiagnosticsCURepairForm test [[#9147]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9147)
* Fix AddRemoveSecurityGroupForm test [[#9148]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9148)
* Fix PxeIsoDatastoreForm test [[#9149]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9149)
* Fix ZoneForm test [[#9150]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9150)
* Fix MiqFormRenderer test [[#9151]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9151)
* drop stub_supports :supports [[#9152]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9152)
* Bump webpack-dev-middleware from 5.3.3 to 5.3.4 [[#9139]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9139)
* Bump follow-redirects from 1.15.4 to 1.15.6 [[#9123]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9123)
* Update ui components to 1.6.0 [[#9129]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9129)
* Fix SettingsCompanyCategories test case [[#9134]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9134)
* Fix MiqAlertSetStructuredList test case [[#9135]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9135)
* Fix NotificationMessage test case [[#9137]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9137)
* Fix CustomButtonForm test case [[#9138]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9138)
* Fix TaggingModifier test case [[#9127]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9127)
* Update UI json language files from March [[#9108]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9108)
* Update codeclimate channel to the latest in manageiq-style [[#9106]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9106)
* Update GHA versions [[#9105]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9105)
* Bump ip from 2.0.0 to 2.0.1 [[#9093]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9093)
* Bump es5-ext from 0.10.62 to 0.10.64 [[#9099]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9099)
* [RADJABOV] Test radjabov with ruby 3.1 [[#9097]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9097)
* Fixed cypress readme and comments [[#9087]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9087)
* Refactor chargeback rates cypress tests [[#9082]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9082)
* Test with ruby 3.1 and 3.0 [[#9080]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9080)
* Simplify regex to remove_right_size_zeros [[#9072]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9072)
* Fix typos in data-table component [[#9073]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9073)
* Drop include_concern [[#9060]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9060)
* Fix typo for CatalogResource [[#9062]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9062)
* Update GHA versions [[#9057]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9057)
* Fix tasks menu cypress test [[#9056]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9056)
* Fix cypress toolbar helper functions [[#9053]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9053)
* Drop PR template after merge of ManageIQ/.github#7 [[#9054]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9054)
* Fix cypress search box assertions [[#9049]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9049)
* Fix cypress explorer helper functions [[#9048]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9048)
* Remove invisible ae tabs [[#9037]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9037)
* Remove report tab technical debt [[#9041]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9041)
* Normalize string to proper capitalization [[#9044]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9044)
* Fixed gtl cypress functions and refactor rates.cy.js [[#9028]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9028)
* Allow rails 7 gems in gemspec [[#9027]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9027)
* Remove unused multi tab haml file [[#9020]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9020)
* Remove credentials and auth angular controllers [[#9021]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9021)
* Remove unused log collection static file [[#9019]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9019)
* Remove old schedule haml files [[#9018]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9018)
* Remove old provider haml files [[#9017]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9017)
* Remove auth_credentials2 haml [[#9024]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9024)
* Remove dashboard haml file change tab js code [[#9042]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9042)
* Removed Old Methods from table_list_view [[#9040]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9040)
* Updated ui translation json files based on core 22789 and 22834 [[#9015]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9015)
* Remove auth credentials haml file [[#9023]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9023)
* Update yarn.lock with latest dependencies [[#9001]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9001)
* Updated Flash Message Text for Consistency [[#9012]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9012)
* Revert s390x lockdowns [[#8993]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8993)
* Upgrade carbon packages to release 10.59.17 [[#8984]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8984)
* Update yarn.lock with latest dependencies [[#8997]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8997)
* Add GitHub Action to update yarn.lock weekly [[#8995]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8995)
* Fix dashboard accessibility issues [[#8994]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8994)
* Update yarn.lock packages [[#8989]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8989)
* Move service-catalog-item's description to a new line in the form and summary pages [[#8975]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8975)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-ui-service](https://github.com/ManageIQ/manageiq-ui-service/compare/quinteros-2.2...radjabov-1)

### Bug

* Fixed custom logo on order page [[#1909]](https://github.com/ManageIQ/manageiq-ui-service/pull/1909)
* Fix menu item order [[#1910]](https://github.com/ManageIQ/manageiq-ui-service/pull/1910)
* Fix issue with the wrong repo name [[#1876]](https://github.com/ManageIQ/manageiq-ui-service/pull/1876)

### Enhancement

* Use npmAuditExcludePackages instead of npmAuditIgnoreAdvisories [[#1921]](https://github.com/ManageIQ/manageiq-ui-service/pull/1921)
* Prevent autocomplete on login fields [[#1884]](https://github.com/ManageIQ/manageiq-ui-service/pull/1884)
* Add noopener noreferrer to blank targets [[#1883]](https://github.com/ManageIQ/manageiq-ui-service/pull/1883)

### Other

* Update jquery to 3.7.1 [[#1939]](https://github.com/ManageIQ/manageiq-ui-service/pull/1939)
* Update patternfly [[#1938]](https://github.com/ManageIQ/manageiq-ui-service/pull/1938)
* Update postcss [[#1937]](https://github.com/ManageIQ/manageiq-ui-service/pull/1937)
* Update bootstrap-select [[#1936]](https://github.com/ManageIQ/manageiq-ui-service/pull/1936)
* Update node-sass [[#1935]](https://github.com/ManageIQ/manageiq-ui-service/pull/1935)
* Update cross-spawn to 7.0.6 [[#1934]](https://github.com/ManageIQ/manageiq-ui-service/pull/1934)
* Update assignee [[#1931]](https://github.com/ManageIQ/manageiq-ui-service/pull/1931)
* Pin path-to-regexp [[#1925]](https://github.com/ManageIQ/manageiq-ui-service/pull/1925)
* Update yarn.lock with latest dependencies [[#1911]](https://github.com/ManageIQ/manageiq-ui-service/pull/1911)
* Bump body-parser from 1.20.2 to 1.20.3 [[#1930]](https://github.com/ManageIQ/manageiq-ui-service/pull/1930)
* Bump axios from 1.6.8 to 1.7.4 [[#1929]](https://github.com/ManageIQ/manageiq-ui-service/pull/1929)
* Bump express from 4.19.2 to 4.21.0 [[#1926]](https://github.com/ManageIQ/manageiq-ui-service/pull/1926)
* Bump webpack from 5.78.0 to 5.94.0 [[#1922]](https://github.com/ManageIQ/manageiq-ui-service/pull/1922)
* Add a security test that runs yarn npm audit [[#1914]](https://github.com/ManageIQ/manageiq-ui-service/pull/1914)
* Update d3-color to 3.1.0 using resolution [[#1913]](https://github.com/ManageIQ/manageiq-ui-service/pull/1913)
* Update yarn.lock with latest dependencies [[#1902]](https://github.com/ManageIQ/manageiq-ui-service/pull/1902)
* Bump ws from 6.2.2 to 6.2.3 [[#1908]](https://github.com/ManageIQ/manageiq-ui-service/pull/1908)
* Update Yarn to v4.3.1 [[#1906]](https://github.com/ManageIQ/manageiq-ui-service/pull/1906)
* Bump jquery from 3.6.4 to 3.7.0 [[#1905]](https://github.com/ManageIQ/manageiq-ui-service/pull/1905)
* Update jquery to 3.6.4 [[#1904]](https://github.com/ManageIQ/manageiq-ui-service/pull/1904)
* Update yarn to v4.2.2 [[#1900]](https://github.com/ManageIQ/manageiq-ui-service/pull/1900)
* Bump jquery from 3.5.1 to 3.6.0 [[#1901]](https://github.com/ManageIQ/manageiq-ui-service/pull/1901)
* Update yarn.lock with latest dependencies [[#1881]](https://github.com/ManageIQ/manageiq-ui-service/pull/1881)
* Update yarn to stable v4.2.1 [[#1899]](https://github.com/ManageIQ/manageiq-ui-service/pull/1899)
* Update yarn to stable v4.1.1 [[#1896]](https://github.com/ManageIQ/manageiq-ui-service/pull/1896)
* Update GHA versions [[#1891]](https://github.com/ManageIQ/manageiq-ui-service/pull/1891)
* Bump ip from 1.1.8/2.0.0 to 1.1.9/2.0.1 [[#1890]](https://github.com/ManageIQ/manageiq-ui-service/pull/1890)
* Bump es5-ext from 0.10.62 to 0.10.64 [[#1887]](https://github.com/ManageIQ/manageiq-ui-service/pull/1887)
* Bump axios from 0.21.4 to 1.6.0 [[#1880]](https://github.com/ManageIQ/manageiq-ui-service/pull/1880)
* Update GHA versions [[#1882]](https://github.com/ManageIQ/manageiq-ui-service/pull/1882)
* Update yarn.lock with latest dependencies [[#1878]](https://github.com/ManageIQ/manageiq-ui-service/pull/1878)
* Revert s390x lockdowns [[#1874]](https://github.com/ManageIQ/manageiq-ui-service/pull/1874)
* Update yarn.lock with latest dependencies [[#1877]](https://github.com/ManageIQ/manageiq-ui-service/pull/1877)
* Add GitHub Action to update yarn.lock weekly [[#1875]](https://github.com/ManageIQ/manageiq-ui-service/pull/1875)
* Update yarn.lock packages [[#1873]](https://github.com/ManageIQ/manageiq-ui-service/pull/1873)
