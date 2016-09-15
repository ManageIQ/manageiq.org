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
        if toc_branch?(item)
          build_toc_branch(tree, item)
        elsif welcome_branch?(item)
          build_welcome(tree, item)
        else
          build_std_branch(tree, item)
        end
      end

      tree
    end

    def toc_branch?(item)
      item["subgroup_title"] == "Table of Contents"
    end

    def welcome_branch?(item)
      item["topic_title"] == "Welcome"
    end

    # Just add path to top level
    def build_toc_branch(tree, item)
      grp_id = item["group_id"]

      if tree[grp_id]
        tree[grp_id]["path"] = item["path"]
      else
        tree[grp_id] = {
          "title" => item["article_title"],
          "path"  => item["path"]
        }
      end
    end

    def build_welcome(tree, item)
      tree["welcome"] = {
        "title" => "Welcome",
        "path"  => item["path"]
      }
    end

    # Follow directory structure down
    def build_std_branch(tree, item)
      grp_id = item["group_id"]
      sub_title = item["subgroup_title"]

      # Root
      unless tree[grp_id]
        tree[grp_id] = {
          "title"    => item["group_title"],
          "children" => []
        }
      end

      # Branch
      unless tree[grp_id]["children"].find {|i| i["title"] == sub_title }
        tree[grp_id]["children"] << {
          "title" => sub_title,
          "children" => []
        }
      end

      # Leaf
      tree[grp_id]["children"].find {|c| c["title"] == sub_title }["children"] << {
        "title" => item["topic_title"],
        "path" => item["path"]
      }
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
      path = path.gsub(/#{Miq.site_dir}/, '')

      parts = path.split("/")

      if parts.last == "index.html"
        parts.pop
      else
        parts[-1] = parts.last.gsub(".html", '')
      end

      parts.join("/")
    end

    def exclusions
      ["." ".."]
    end

    def inclusions
      [".html"]
    end
  end
end
