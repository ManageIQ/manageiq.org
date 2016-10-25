require_relative "../../lib/miq"

Jekyll::Hooks.register :site, :pre_render do |site|
  site.data['tags'] = []

  site.tags.each do |tag, posts|
    site.pages << Miq::TagIndex.new(site, tag, posts)
    site.data['tags'] << tag
  end
end
