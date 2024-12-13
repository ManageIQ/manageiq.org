require "font-awesome-sass"

class FontGenerator < Jekyll::Generator
  def generate(site)
    @site = site
    @site.static_files.concat(font_files)
  end

  def font_files
    source = FontAwesome::Sass.gem_path
    Dir.glob(File.join(source, "assets/fonts/font-awesome/*")).map do |font|
      font = font.sub(source, "")
      dir = File.dirname(font)
      file_name = File.basename(font)
      Jekyll::StaticFile.new(@site, source, dir, file_name)
    end
  end
end
