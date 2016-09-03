require "jekyll"
require "pry"

module Miq
  class MdLinkGenerator < Jekyll::Generator
    def generate(site)
      site.pages.each {|page| rewrite_links(page) }
    end

    def rewrite_links(page)
      page.content = Miq.md_link_to_html(page.content)
    end
  end
end

Jekyll::Hooks.register :site, :post_read do |site|
  # Collect pages with titles
  site.data['titled_pages'] = site.pages.map {|p| p unless p['title'].nil? }.compact
end

# Jekyll::Hooks.register :site, :post_render do |site|
#   binding.pry
# end

# %i(post_init pre_render post_render post_write).each do |hook|
#   Jekyll::Hooks.register :page, hook do |page|
#     puts hook if page.respond_to? :title
#   end
# end
