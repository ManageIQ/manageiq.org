require "jekyll"

module Miq
  class GuidePage < Jekyll::Page
    def self.new_from(page)
      new(page.site, Miq.site_dir.to_s, page.dir, page.name)
    end

    def render_with_liquid?
      false
    end
  end
end
