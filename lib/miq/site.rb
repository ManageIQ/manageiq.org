module Miq
  class Site < Executor
    def self.reset
      new.reset
    end

    def self.update
      new.update
    end

    def self.build(trace = false)
      new(trace).build
    end

    def self.serve
      new.serve
    end

    attr_reader :source_dir, :dest_dir, :branch

    def initialize(trace = false)
      # Where is the site directory?
      @source_dir = Miq.site_dir

      # Where should the site go?
      @dest_dir   = Miq.dest_dir

      # Which branch to pull (useful for development)
      @branch     = ENV["MIQ_SITE_BRANCH"]  || `git rev-parse --abbrev-ref HEAD`

      # Tracing enabled?
      @trace      = trace
    end

    def reset
      shell "git reset --hard HEAD"
    end

    def update
      shell "git pull origin #{branch}"
    end

    def build
      cmd  = "#{bundler} exec jekyll build -s #{source_dir} -d #{dest_dir}"
      cmd += " --trace" if @trace
      shell cmd, clean: true
    end

    def serve
      shell "#{bundler} exec jekyll serve -s #{source_dir} -d #{dest_dir} --incremental --watch --livereload --trace", clean: true
    end
  end
end
