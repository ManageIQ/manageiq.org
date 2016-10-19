Jekyll::Hooks.register :site, :pre_render do |site|
  site.posts.docs.each do |post|
    post.data["slug"] = post.data["slug"].sub(/\.html$/, '')
  end
end
