require "jekyll"

module Miq
  class RefPage < Jekyll::Page
    def self.new_from(page)
      # @dir is source, .dir is destination
      # A file like index_euwe.md has a different source and destination
      new(page.site, Miq.site_dir.to_s, page.instance_variable_get(:@dir), page.name)
    end

    # Useful for troubleshooting
    attr_reader :source, :branch, :legacy

    # Initialize a new Page.
    #
    # site - The Site object.
    # base - The String path to the source.
    # dir  - The String path between the source and the file.
    # name - The String filename of the file.
    def initialize(site, base, dir, name)
      # Pathname to handle having, not having trailing slashes, etc.
      @source = Pathname.new(dir).join(name).to_s

      # Determine branch early
      @branch = Miq.all_doc_branches.detect { |b| @source.include?(b) } || "latest"
      @legacy = Miq.legacy_doc_branches.include?(@branch)

      super

      data['source'] = @source
      data['branch'] = @branch || data['doc_branch']
      data['legacy'] = @legacy
      data['branch_paths'] = RefVersions.instance.paths_for(@source)
      data['canonical_url'] = RefVersions.instance.canonical_path_for(@source)
    end

    # Only render with liquid if markdown file
    def render_with_liquid?
      source =~ /\.md$/
    end
  end
end
