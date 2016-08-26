require 'fileutils'

module Miq
  class RefDocs < Executor
    def self.reset
      new.reset
    end

    def self.build
      new.build
    end

    def self.update
      new.update
    end

    attr_reader :repo, :branch, :tmp_dir, :src_dir, :dst_dir

    def initialize
      # Where do the docs live?
      @repo     = ENV["MIQ_REF_REPO"] || "https://github.com/ManageIQ/manageiq_docs.git"

      # What branch to checkout?
      @branch   = ENV["MIQ_REF_BRANCH"] || "master"

      # Where should we cache and build?
      @tmp_dir  = ENV["MIQ_REF_TMP"]  || "/tmp/manageiq_docs"

      # Where are the built files that we want?
      @src_dir  = ENV["MIQ_REF_SRC"]  || "_package/community/latest"

      # Where should the files end up?
      @dst_dir  = ENV["MIQ_REF_DST"]  || Miq.docs_dir.join("reference")
    end

    def reset
      logger.info "Removing #{tmp_dir}"
      logger.info "Removing directories from #{dst_dir}"

      unless debug?
        rm_dir(tmp_dir)

        Dir["#{dst_dir}/*"].each do |path|
          rm_dir(path) if File.directory?(path)
        end
      end
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
      shell [
        "cd #{tmp_dir}",
        "git checkout #{branch}",
        "#{bundler} install"
      ].join(" && ")
    end

    def build_ref_docs
      logger.info "Building ref docs"
      shell [
        "cd #{tmp_dir}",
        "#{bundler} exec ascii_binder package"
      ].join(" && ")
    end

    def move_files
      if File.directory?("#{tmp_dir}/#{src_dir}") || debug?
        prep dst_dir
        logger.info "Syncing files to #{dst_dir}"
        cmd = "rsync -av "
        cmd << exclude_files.map{|x| "--exclude '#{x}'"}.join(' ')
        cmd << " #{tmp_dir}/#{src_dir}/* #{dst_dir}/"
        shell cmd
      else
        logger.error "Reference docs source directory not present."
      end
    end

    private

    def prep(dir)
      FileUtils.mkdir_p(dir)
    end

    def rm_dir(dir)
      if File.directory?(dir)
        FileUtils.remove_dir(dir)
      end
    end

    # Relative to src_dir
    def exclude_files
      ["/index.html", "sitemap.xml"]
    end
  end
end
