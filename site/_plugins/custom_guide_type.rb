require_relative "../../lib/miq"

Jekyll::Hooks.register :site, :pre_render do |site|
  guides = site.pages.select do |page|
    (page.class != Miq::DirIndex) && (page.path =~ /^docs\/guides/)
  end

  site.pages -= guides

  guides = guides.map{|page| Miq::GuidePage.new_from(page) }

  site.pages += guides
end
