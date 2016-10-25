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

require_relative "miq/md_link_converter"
require_relative "miq/dir_index"
require_relative "miq/tag_index"

require_relative "miq/lwimiq"
require_relative "miq/blog_year"
require_relative "miq/blog_month"

module Miq
  def self.working_dir
    if ENV["MIQ_BASE_DIR"]
      Pathname.new(ENV["MIQ_BASE_DIR"])
    else
      Pathname.new(Dir.pwd)
    end
  end

  def self.dest_dir
    working_dir.join( (ENV["MIQ_SITE_DEST"] || "dest") )
  end

  def self.site_dir
    working_dir.join( (ENV["MIQ_SITE_SOURCE"] || "site") )
  end

  def self.docs_dir
    if ENV["MIQ_DOCS_DIR"]
      working_dir.join(ENV["MIQ_DOCS_DIR"])
    else
      working_dir.join("site", "docs")
    end
  end

  def self.guides_dir
    site_dir.join(guides_relative)
  end

  def self.guides_relative
    (ENV["MIQ_GUIDES_DIR"] || "docs/guides")
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
end
