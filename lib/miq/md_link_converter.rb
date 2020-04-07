require 'uri'

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

    def external_link?(url)
      begin
        uri = URI(url)
      rescue
        return false # in case caller does not pass in valid URL
      end
      return false if uri.scheme.nil? || uri.host.nil?
      return false if uri.host.start_with?("manageiq.org") || uri.host.start_with?("www.manageiq.org")
      return true
    end

    def remove_ext(str)
      str.gsub(MD_LINK) do |link|
        title, path = link.match(MD_LINK)[1..2]
        path.gsub!(".md", '') unless external_link?(path)
        "[#{title}](#{path})"
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
