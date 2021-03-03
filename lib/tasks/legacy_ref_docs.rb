require 'fileutils'
require_relative '../miq/executor'

module Miq
  class LegacyRefDocs < Executor
    BRANCHES = %w[ivanchuk hammer gaprindashvili fine euwe].freeze

    attr_reader :repo, :branches, :tmp_dir, :src_dir, :dst_dir

    def initialize(branches = nil)
      # Where do the docs live?
      @repo     = ENV["MIQ_REF_REPO"] || "https://github.com/ManageIQ/manageiq-documentation.git"

      # What branches to copy?
      @branches = (branches.nil? || branches.empty?) ? BRANCHES : branches

      # Where should we cache and build?
      @tmp_dir  = ENV["MIQ_REF_TMP"]  || "/tmp/legacy-manageiq-documentation"

      # Where are the built files that we want?
      @src_dir  = ENV["MIQ_REF_SRC"]  || "_package/community"

      # Where should the files end up?
      @dst_dir  = ENV["MIQ_REF_DIR"]  || Pathname.new(__dir__).join("../../site/docs/reference").expand_path

      @menus_dir = Pathname.new(__dir__).join("../../site/_data/menus").expand_path
    end

    def reset
      return if debug?

      logger.info "Removing #{tmp_dir}"
      rm_dir(tmp_dir)

      branches.each do |branch|
        dir = dst_dir.join(branch)
        if dir.directory?
          logger.info "Removing #{dir}"
          rm_dir(dir)
        end
      end
    end

    def build
      clone_or_update_repo
      setup_ascii_binder
      build_ref_docs
      sync_files
    end

    def update
      clone_or_update_repo
    end

    def clone_or_update_repo
      if File.directory?(tmp_dir)
        update_repo
      else
        clone_repo
      end
    end

    def setup_ascii_binder
      logger.info "Installing Ascii Binder"
      primary_branch = BRANCHES.first

      shell [
        "cd #{tmp_dir}",
        # Pretend that the primary branch is master for installation purposes
        "git checkout #{primary_branch}",
        "git branch -D master",
        "git checkout -b master",
        # Install ascii_binder and dependencies
        "#{bundler} install",
        # Remove the primary branch if it's not one of the requested branches
        branches.include?(primary_branch) ? "true" : "git branch -D #{primary_branch}"
      ].join(" && ")
    end

    def build_ref_docs
      logger.info "Building legacy ref docs"
      shell "cd #{tmp_dir} && #{bundler} exec asciibinder package"
    end

    def sync_files
      if File.directory?("#{tmp_dir}/#{src_dir}") || debug?
        prep dst_dir

        branches.each do |branch|
          rsync_copy(branch)
          copy_menu(branch)
        end
      else
        logger.error "Reference docs source directory not present."
      end
    end

    private

    # Relative to src_dir
    def exclude_files
      ["_stylesheets", "/index.html", "sitemap.xml"]
    end

    def rsync_copy(branch)
      source = "#{tmp_dir}/#{src_dir}/#{branch}/*"
      dest   = "#{dst_dir}/#{branch}"

      logger.info "Syncing files to #{dest}"

      cmd = ["rsync -av ", rsync_excludes, source, dest].join(' ')

      shell cmd
    end

    def copy_menu(branch)
      menu = @menus_dir.join("ref_menu_#{branch}.yml")

      logger.info "Syncing menu to #{menu}"

      shell "cd #{tmp_dir} && git checkout #{branch}"
      FileUtils.cp(File.join(tmp_dir, "site_menu.yml"), menu)
    end

    def branch_paths
      branches.map { |b| "#{tmp_dir}/#{src_dir}/#{b}/*" }.join(' ')
    end

    def rsync_excludes
      exclude_files.map { |x| "--exclude '#{x}'" }.join(' ')
    end

    def update_repo
      logger.info "Updating local ref docs repo"
      shell "cd #{tmp_dir} && git fetch origin"
    end

    def clone_repo
      logger.info "Cloning #{repo} to #{tmp_dir}"
      shell "git clone #{repo} #{tmp_dir} && cd #{tmp_dir} && git fetch origin #{branch_fetch_segments}"
    end

    def branch_fetch_segments
      branches_not_master.map { |b| "+#{b}:#{b}" }.join(' ')
    end

    def branches_not_master
      branches.reject { |b| b == "master" }
    end
  end
end
