require_relative "legacy_ref_docs"

desc "Rebuild legacy docs"
task :rebuild_legacy_docs do
  builder = Miq::LegacyRefDocs.new
  builder.reset
  builder.build
end
