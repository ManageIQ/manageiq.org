require_relative "legacy_ref_docs"

desc "Rebuild legacy docs"
task :rebuild_legacy_docs, [:branches] do |_task, args|
  branches = args.extras.unshift(args[:branches]).compact
  builder  = Miq::LegacyRefDocs.new(branches)
  builder.reset
  builder.build
end
