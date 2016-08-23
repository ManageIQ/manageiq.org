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

    attr_reader :guides_dir

    def initialize
      @guides_dir = Miq.site_dir.join( (ENV["MIQ_GUIDES_DIR"] || "docs/guides") )
    end

    def reset
      shell "cd #{guides_dir} && git reset --hard HEAD"
    end

    def update
      reset
      shell "git submodule update"
    end

    def build
      add_front_matter
    end

    # Adds front matter for Jekyll compat
    def add_front_matter
      Dir["#{guides_dir}/**/*.md"].each do |path|
        content = File.readlines(path)

        unless content[0] == "---\n"
          File.open(path, "w") do |f|
            f.puts "---\n---\n"
            content.each {|line| f.puts line }
          end
        end
      end
    end

    # /Guides
  end
end
