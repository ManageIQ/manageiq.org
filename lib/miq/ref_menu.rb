require "jekyll"
require "safe_yaml/load"

module Miq
  class RefMenu < Executor
    def self.build
      new.build
    end

    attr_reader :dst_dir, :data_dir

    def initialize
      @dst_dir  = ENV["MIQ_REF_DST"] || Miq.docs_dir.join("reference", "latest")
      @data_dir = Miq.site_dir.join("_data", "menus")
    end

    def menu_data
      @data ||= load_data
    end

    def to_yaml
      menu_data.to_yaml
    end

    def build
      prep(data_dir)

      File.open("#{data_dir}/ref_menu.yml", "w") do |f|
        f.puts to_yaml
      end
    end

    private

    def load_data
      flat_data = Dir["#{dst_dir}/**/*.html"].map do |path|
        read_yaml(path)
      end

      tree = {}

      flat_data.each do |item|
        grp_id = item["group_id"]
        sub_title = item["subgroup_title"]

        unless tree[grp_id]
          tree[grp_id] = {
            "title"    => item["group_title"],
            "children" => []
          }
        end

        unless tree[grp_id]["children"].find {|i| i["title"] == sub_title }
          tree[grp_id]["children"] << {
            "title" => sub_title,
            "children" => []
          }
        end

        tree[grp_id]["children"].find {|c| c["title"] == sub_title }["children"] << {
          "title" => item["topic_title"],
          "path" => item["path"]
        }
      end

      tree
    end

    def read_yaml(path)
      content = File.read(path)

      if content =~ Jekyll::Document::YAML_FRONT_MATTER_REGEXP
        yaml = SafeYAML.load(Regexp.last_match(1))

        yaml["path"] = replace_path(path)
        yaml
      else
        {}
      end
    end

    def replace_path(path)
      path.gsub(/#{Miq.site_dir}/, '').gsub(".html", '/')
    end

    def exclusions
      ["." ".."]
    end

    def inclusions
      [".html"]
    end
  end
end
