module Miq
  class DocMenu
    attr_reader :base_dir, :keep_types

    def initialize(base_dir, keep_types: [:md], transform_paths: true)
      @base_dir = base_dir
      @keep_types = keep_types.map{|t| ".#{t}" }
      @transform_paths = !!(transform_paths)
    end

    def tree
      @tree ||= walk_tree(base_dir)
    end

    def transform_paths?
      @transform_paths
    end

    private

    def walk_tree(path, name = nil)
      data = { :name => (name || File.basename(path)) }
      data[:children] = children = []

      Dir.foreach(path) do |child|
        next if exclusions.include?(child)

        full_path = File.join(path, child)

        if File.directory?(full_path)
          children << walk_tree(full_path, child)
        else
          if keep_types.include?(File.extname(child))
            children << transform(child)
          end
        end
      end

      data
    end

    def transform(path)
      if transform_paths?
        Miq.md_file_to_html(path)
      else
        path
      end
    end

    def exclusions
      ["..", "."]
    end
  end
end
