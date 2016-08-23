module Miq
  class Site < Executor
    def self.reset
      new.reset
    end

    def self.update
      new.update
    end

    def self.build
      new.build
    end

    attr_reader :source_dir, :branch

    def initialize
      # Where is the site directory?
      @source_dir = ENV["MIQ_SITE_DIR"] || File.expand_path("../../../site", __FILE__)

      # Which branch to pull (useful for development)
      @branch     = ENV["MIQ_SITE_BRANCH"] || "master"
    end

    def reset
      shell "git reset --hard HEAD"
    end

    def update
      shell "git pull origin #{branch}"
    end

    def build
      shell "cd #{source_dir} && #{bundler} exec jekyll build"
    end
  end
end
