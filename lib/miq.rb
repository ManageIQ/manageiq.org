require 'pathname'
require 'bundler'

if ENV["MIQ_ENV"] == "production"
  Bundler.require(:default)
else
  Bundler.require(:default, :development)
  Dotenv.load
end

require_relative "miq/executor"
require_relative "miq/site"

require_relative "miq/guides"
require_relative "miq/guides_menu"
require_relative "miq/guide_page"

require_relative "miq/ref_docs"
require_relative "miq/ref_menu"
require_relative "miq/ref_page"
require_relative "miq/ref_versions"
require_relative "miq/legacy_ref_docs"

require_relative "miq/md_link_converter"
require_relative "miq/dir_index"
require_relative "miq/tag_index"

require_relative "miq/lwimiq"
require_relative "miq/blog_year"
require_relative "miq/blog_month"

module Miq
  def self.working_dir
    Pathname.new(ENV.fetch("MIQ_BASE_DIR", Dir.pwd))
  end

  # Main directories

  def self.dest_dir
    Pathname.new ENV.fetch("MIQ_SITE_DEST", working_dir.join("dest"))
  end

  def self.site_dir
    Pathname.new ENV.fetch("MIQ_SITE_SOURCE", working_dir.join("site"))
  end

  def self.docs_dir
    Pathname.new ENV.fetch("MIQ_DOCS_DIR", site_dir.join("docs"))
  end

  def self.menus_dir
    site_dir.join("_data", "menus")
  end

  def self.tmp_dir
    working_dir.join(ENV["MIQ_TMP_DIR"] || "tmp")
  end

  # Docs subdirectories

  # Where Jekyll will look for guides
  def self.guides_dir
    docs_dir.join(ENV["MIQ_GUIDES_DIR"] || "guides")
  end

  # The reference doc destination that Jekyll will use
  def self.reference_dir
    docs_dir.join(ENV["MIQ_REF_DIR"] || "reference")
  end

  # Might want to make these override-able in the future:

  def self.doc_index_template
    "doc_index.html"
  end

  def self.tag_index_template
    "tag_index.html"
  end

  def self.blog_year_template
    "blog_year.html"
  end

  def self.blog_month_template
    "blog_month.html"
  end

  def self.doc_branches
    ENV.fetch('MIQ_REF_BRANCHES', 'master,jansa').split(',')
  end

  def self.legacy_doc_branches
    ENV.fetch('MIQ_REF_BRANCHES', 'ivanchuk,hammer,gaprindashvili,fine,euwe').split(',')
  end

  def self.all_doc_branches
    doc_branches + legacy_doc_branches
  end
end
