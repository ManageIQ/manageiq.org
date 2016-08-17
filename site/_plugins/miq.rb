module Miq
  MD_LINK = /(\[[^\]]*\]\([^:\)]*)\.md\)/

  def self.md_link_to_html(link)
    link.gsub(MD_LINK, '\1.html)')
  end

  def self.md_file_to_html(file)
    file.gsub(/md$/, "html")
  end
end
