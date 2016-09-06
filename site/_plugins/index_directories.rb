require_relative "../../lib/miq"

Jekyll::Hooks.register :site, :pre_render do |site|
  Dir["#{Miq.guides_dir}/**/*"].each do |path|
    if File.directory?(path)
      rel_path = path.gsub(/#{Miq.site_dir}/, '')
      pages = site.pages.find_all {|p| p.dir == "#{rel_path}/" }

      site.pages << Miq::DirIndex.new(site, rel_path, pages)
    end
  end
end
