require "jekyll"

module Miq
  class BlogMonth < Jekyll::Page
    # Initialize a new Blog Archive.
    #
    # site  - The Site object.
    # dir   - The String path between the source and the file.
    # year  - Date year, becomes part of title.
    # month - Date month, becomes part of title.
    # posts - Posts with this tag
    #
    def initialize(site, year, month, posts)
      @month = month

      @site = site
      @base = Miq.site_dir
      @dir  = "blog/#{year}/#{padded_month}"
      @name = "index.html"
      @path = File.join(@base, "_layouts", Miq.blog_month_template)

      process(name)
      read_yaml(File.join(@base, "_layouts"), Miq.blog_month_template)

      data.default_proc = proc do |_, key|
        site.frontmatter_defaults.find(File.join(@dir, @name), type, key)
      end

      date = Date.new(year, month)

      data['title'] = date.strftime('%B')
      data['year']  = year
      data['month'] = month
      data['posts'] = posts

      Jekyll::Hooks.trigger :pages, :post_init, self
    end

    def padded_month
      "%02d" % @month
    end
  end
end
