require "jekyll"

module Miq
  class BlogYear < Jekyll::Page
    attr_reader :year, :months
    # Initialize a new Blog Archive.
    #
    # site  - The Site object.
    # dir   - The String path between the source and the file.
    # year - Date year, eg 2016 or 2014/05; becomes title.
    # posts - Posts with this tag
    #
    def initialize(site, year, months)
      @site = site
      @year = year
      @months = months

      @base = Miq.site_dir
      @dir  = "blog/#{year}"
      @name = "index.html"
      @path = File.join(@base, "_layouts", Miq.blog_year_template)

      process(name)
      read_yaml(File.join(@base, "_layouts"), Miq.blog_year_template)

      data.default_proc = proc do |_, key|
        site.frontmatter_defaults.find(File.join(@dir, @name), type, key)
      end

      data['title'] = "Blog Posts for #{year}"
      data['months'] = month_pages

      Jekyll::Hooks.trigger :pages, :post_init, self
    end

    def month_pages
      months.map { |month, posts| Miq::BlogMonth.new(site, year, month, posts) }
    end
  end
end
