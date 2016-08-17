require 'pry'

module Miq
  class MdLinkGenerator < Jekyll::Generator
    def generate(site)
      site.collections["dev_docs"].docs.each { |doc| rewrite_links(doc) }
    end

    def rewrite_links(doc)
      # doc.content = doc.content.gsub(MD_FILE, '\1.html)')
      doc.content = Miq.md_link_to_html(doc.content)
    end
  end
end
