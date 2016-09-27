require "jekyll"

module Miq
  class TagIndex < Jekyll::Page
    # Initialize a new Directory Index.
    #
    # site  - The Site object.
    # dir   - The String path between the source and the file.
    # tag   - Name of the tag
    # pages - Pages with this tag
    #
    def initialize(site, tag, pages = [])
      @site = site
      @base = Miq.site_dir
      @dir  = "blog/tags"
      @name = "#{tag}.html"
      @path = File.join(@base, "_layouts", Miq.tag_index_template)

      process(name)
      read_yaml(File.join(@base, "_layouts"), Miq.tag_index_template)

      data.default_proc = proc do |_, key|
        site.frontmatter_defaults.find(File.join(@dir, @name), type, key)
      end

      data['title'] = tag.titlecase
      data['pages'] = pages

      Jekyll::Hooks.trigger :pages, :post_init, self
    end
  end
end
