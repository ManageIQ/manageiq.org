require 'fileutils'

module Miq
  class RefDocs < Executor
    def reset
      new.reset
    end

    def self.build
      new.build
    end

    def self.update
      new.update
    end

    attr_reader :repo, :tmp_dir, :dest_dir, :bundler

    def initialize
      # Where do the docs live?
      @repo     = ENV["MIQ_REF_REPO"] || "https://github.com/ManageIQ/manageiq_docs.git"

      # Where should we cache and build?
      @tmp_dir  = ENV["MIQ_REF_TMP"]  || "/tmp/manageiq_docs"

      # Where should the files end up?
      @dest_dir = ENV["MIQ_REF_DEST"] || Miq.dest_dir.join("docs", "reference")

      # Probably a good idea to use an explicit bundler path
      @bundler  = ENV["MIQ_BUNDLER"]  || `which bundle`
    end

    def build
      clone_or_update_repo
      setup_ascii_binder
      build_ref_docs
      move_files
    end

    def update
      clone_or_update_repo
    end

    def clone_or_update_repo
      if File.directory?(tmp_dir)
        logger.info "Updating local ref docs repo"
        shell "cd #{tmp_dir} && git pull origin"
      else
        logger.info "Cloning #{repo} to #{tmp_dir}"
        shell "git clone #{repo} #{tmp_dir}"
      end
    end

    def setup_ascii_binder
      logger.info "Installing Ascii Binder"
      shell "cd #{tmp_dir} && #{bundler} install"
    end

    def build_ref_docs
      logger.info "Building ref docs"
      shell "cd #{tmp_dir} && #{bundler} exec asciibinder package"
    end

    def move_files
      prep dest_dir
      logger.info "Syncing files to #{dest_dir}"
      cmd = "rsync -av "
      cmd << exclude_files.map{|x| "--exclude '#{x}'"}.join(' ')
      cmd << " #{tmp_dir}/_package/community/* #{dest_dir}/"
      shell cmd
    end

    private

    def prep(dir)
      FileUtils.mkdir_p(dir)
    end

    # Relative to tmp_dir/_package/community
    def exclude_files
      ["/index.html", "sitemap.xml"]
    end
  end
end
