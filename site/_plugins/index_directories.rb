require_relative "../../lib/miq"

Jekyll::Hooks.register :site, :pre_render do |site|
  Dir["#{Miq.guides_dir}/**/*"].each do |path|
    if File.directory?(path)
      # The directory we want to index
      rel_path = path.gsub(/#{Miq.site_dir}/, '')

      # The pages in that directory
      pages = site.pages.find_all {|p| p.dir == "#{rel_path}/" }

      # Create a new index page and add it to all site pages
      site.pages << Miq::DirIndex.new(site, rel_path, pages)
    end
  end
end
