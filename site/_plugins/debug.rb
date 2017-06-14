# $counts = {}
#
# %i(after_init after_reset post_read pre_render post_render post_write).each do |hook|
#   Jekyll::Hooks.register(:site, hook) { |site| puts "site:#{hook}" }
# end
#
# %i(post_init pre_render post_render post_write).each do |hook|
#   $counts[hook] ||= 0
#
#   Jekyll::Hooks.register(:pages, hook) do |page|
#     if page.name == "active_directory.html" && page.kind_of?(Miq::RefPage)
#       $counts[hook] += 1
#     end
#   end
# end

# %i(post_init pre_render post_render post_write).each do |hook|
#   Jekyll::Hooks.register(:posts, hook) { |post| puts "posts:#{hook}" }
# end

# Jekyll::Hooks.register :site, :post_write do |site|
#   puts $counts
# end
