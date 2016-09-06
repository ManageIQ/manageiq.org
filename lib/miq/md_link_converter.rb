module Miq
  class MdLinkConverter
    MD_LINK = /\[([^\]]*)\]\((.*)\)/
    LEADING_SLASH = /^\//

    attr_reader :content, :prefix

    def initialize(md_content)
      @content = md_content
      @prefix  = (ENV["MIQ_GUIDES_DIR"] || "docs/guides")
    end

    def convert
      prefix_path(remove_ext(content))
    end

    def without_ext
      remove_ext(content)
    end

    def with_prefixed_path
      prefix_path(content)
    end

    private

    def remove_ext(str)
      str.gsub(MD_LINK) do |link|
        title, path = link.match(MD_LINK)[1..2]
        "[#{title}](#{path.gsub(".md", '')})"
      end
    end

    def prefix_path(str)
      str.gsub(MD_LINK) do |link|
        if link.match(MD_LINK)[2].match(LEADING_SLASH)
          title, path = link.match(MD_LINK)[1..2]
          "[#{title}](/#{prefix}#{path})"
        else
          link
        end
      end
    end
  end
end
