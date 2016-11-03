require_relative "../../lib/miq"

Jekyll::Hooks.register :site, :pre_render do |site|
  site.posts.docs.sort_by!{|post| post.date }

  sorted_posts = {}

  site.posts.docs.each do |post|
    sorted_posts[post.date.year] ||= {}
    sorted_posts[post.date.year][post.date.month] ||= []
    sorted_posts[post.date.year][post.date.month] << post
  end

  # add archive page for each year and build tree for menu
  post_tree = []

  sorted_posts.each do |year, data|
    y = Miq::BlogYear.new(site, year, data)
    site.pages << y
    site.pages += y.month_pages

    post_tree << {
      "title"    => year,
      "path"     => y.path,
      "children" => y.month_pages
    }
  end

  site.data["menus"]["blog_menu"] = post_tree
end
