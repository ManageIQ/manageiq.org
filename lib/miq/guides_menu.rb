require "active_support/core_ext/string/inflections"

module Miq
  class GuidesMenu < Executor
    def self.build
      new.build
    end

    attr_reader :dest_dir, :data_dir

    def initialize(transform_paths: true)
      @dest_dir = ENV["MIQ_GUIDES_DST"] || Miq.docs_dir.join("guides")
      @data_dir = Miq.site_dir.join("_data", "menus")
      @transform_paths = transform_paths
    end

    def menu_data
      @data ||= walk_tree(dest_dir)
    end

    def to_yaml
      menu_data.to_yaml
    end

    def build
      prep(data_dir)

      File.open("#{data_dir}/guides_menu.yml", "w") do |f|
        f.puts to_yaml
      end
    end

    private

    def walk_tree(path, title = nil)
      data = { "title" => (title || File.basename(path)).humanize.titlecase }
      data["children"] = children = []

      Dir.foreach(path) do |child|
        next if exclusions.include?(child)

        full_path = File.join(path, child)

        if File.directory?(full_path)
          children << walk_tree(full_path, child)
        else
          if inclusions.include?(File.extname(child))
            children << build_child(child, full_path)
          end
        end
      end

      data
    end

    def build_child(name, path)
      {
        "title" => titlefy(name),
        "path" => replace_path(path)
      }
    end

    def transform(path)
      if transform_paths?
        Miq.md_file_to_html(path)
      else
        path
      end
    end

    def replace_path(path)
      path.gsub(/#{Miq.site_dir}/, '').gsub(".md", '')
    end

    def titlefy(path)
      path.gsub(/(\.md|\.html)$/i, '').humanize.titlecase
    end

    def transform_paths?
      !!(@transform_paths)
    end

    def exclusions
      ["..", "."]
    end

    def inclusions
      [".md"]
    end
  end
end
