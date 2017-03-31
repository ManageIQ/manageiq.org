require_relative "../../lib/miq"

Jekyll::Hooks.register :site, :pre_render do |site|
  guides = site.pages.select do |page|
    (page.class != Miq::DirIndex) && (page.path =~ /^docs\/guides/)
  end

  refs = site.pages.select do |page|
    (page.class != Miq::DirIndex) && (page.path =~ /^docs\/reference/)
  end

  site.pages -= guides
  site.pages -= refs

  guides.map! { |page| Miq::GuidePage.new_from(page) }
  refs.map!   { |page| Miq::RefPage.new_from(page) }

  site.pages += guides
  site.pages += refs
end
