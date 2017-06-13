require "jekyll"

module Miq
  class RefPage < Jekyll::Page
    def self.new_from(page)
      # @dir is source, .dir is destination
      # A file like index_euwe.md has a different source and destination
      new(page.site, Miq.site_dir.to_s, page.instance_variable_get(:@dir), page.name)
    end

    # Useful for troubleshooting
    attr_reader :source, :branch

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
      @branch = Miq.doc_branches.detect { |b| @source.include?(b) } || "latest"

      super

      data['source'] = @source
      data['branch'] = @branch || data['doc_branch']
      data['branch_paths'] = branch_paths
    end

    # Returns the path for a given branch
    #
    def branch_path_for(given_branch)
      if name =~ /index.*\.md$/
        "/" + path.sub(name, '') + given_branch
      else
        source.sub(branch, given_branch)
      end
    end

    # Collect branches in a hash for the branch menu at the top of pages
    # For historical/SEO reasons, master docs are under "/latest", and renamed such
    #
    def branch_paths
      Miq.doc_branches.each_with_object({}) do |branch, hsh|
        branch = "latest" if branch == "master"
        hsh[branch.to_s] = branch_path_for(branch)
      end
    end

    # Only render with liquid if markdown file
    def render_with_liquid?
      source =~ /\.md$/
    end
  end
end
