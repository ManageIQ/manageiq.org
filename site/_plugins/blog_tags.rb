require_relative "../../lib/miq"

Jekyll::Hooks.register :site, :pre_render do |site|
  site.tags.each do |tag, pages|
    site.pages << Miq::TagIndex.new(site, tag, pages)
  end
end
