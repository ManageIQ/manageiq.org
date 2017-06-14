require "jekyll"

module Miq
  class GuidePage < Jekyll::Page
    def self.new_from(page)
      new(page.site, Miq.site_dir.to_s, page.dir, page.name)
    end

    # Don't render guides with liquid because some
    # pages have conflicting syntax
    def render_with_liquid?
      false
    end
  end
end
