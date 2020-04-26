require "active_support/core_ext/object/blank"

module Miq
  class Guides < Executor
    def self.reset
      new.reset
    end

    def self.update
      new.update
    end

    def self.build
      new.build
    end

    attr_reader :repo, :branch, :tmp_dir, :src_dir, :dst_dir

    def initialize
      # Where do the docs live?
      @repo     = ENV["MIQ_GUIDES_REPO"] || "https://github.com/ManageIQ/guides.git"

      # What branch to checkout?
      @branch   = ENV["MIQ_GUIDES_BRANCH"] || "master"

      # Where should we cache and build?
      @tmp_dir  = ENV["MIQ_GUIDES_TMP"]  || "/tmp/guides"

      # What subdirectory do we want?
      @src_dir  = ENV["MIQ_GUIDES_SRC"]

      # Where should the files end up?
      @dst_dir  = ENV["MIQ_GUIDES_DST"]  || Miq.docs_dir.join("guides")
    end

    def reset
      logger.info "Removing #{tmp_dir}"
      logger.info "Removing files and directories from #{dst_dir}"

      unless debug?
        rm_dir(tmp_dir)

        Dir["#{dst_dir}/*"].each do |path|
          if File.directory?(path)
            rm_dir(path)
          else
            File.delete(path)
          end
        end
      end
    end

    def build
      clone_or_update_repo
      sync_files
      add_front_matter
    end

    def update
      clone_or_update_repo
    end

    def clone_or_update_repo
      if File.directory?(tmp_dir)
        logger.info "Updating local guides repo"
        shell "cd #{tmp_dir} && git pull origin"
      else
        logger.info "Cloning #{repo} to #{tmp_dir}"
        shell "git clone #{repo} --depth 1 #{tmp_dir}"
      end
    end

    # Adds YAML front matter for Jekyll compat
    def add_front_matter
      logger.info "Adding front matter"

      Dir["#{dst_dir}/**/*.md"].each do |path|
        content = File.readlines(path)

        unless content[0] == "---\n"
          File.open(path, "w") do |f|
            f.puts "---\n" * 2
            content.each { |line| f.puts line }
          end
        end
      end
    end

    def sync_files
      if File.directory?("#{tmp_dir}/#{src_dir}") || debug?
        prep dst_dir
        logger.info "Syncing files to #{dst_dir}"
        cmd = "rsync -av "
        cmd << exclude_files.map{|x| "--exclude '#{x}'"}.join(' ')
        cmd << " #{sync_target}/* #{dst_dir}/"
        shell cmd
      else
        logger.error "Reference docs source directory not present."
      end
    end

    def sync_target
      if src_dir.blank?
        tmp_dir
      else
        "#{tmp_dir}/#{src_dir}"
      end
    end

    private

    # Relative to src_dir
    def exclude_files
      ["bin"]
    end
    # /Guides
  end
end
