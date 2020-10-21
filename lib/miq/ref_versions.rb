require "singleton"
require "active_support/core_ext/enumerable"

module Miq
  class RefVersions
    include Singleton

    attr_reader :index

    def initialize
      @index = build_index
    end

    def [](path)
      @index[path.to_s] || []
    end

    def paths_for(path)
      self[path].index_by { |p| path_version(p) }
    end

    def canonical_path_for(path)
      recent_path = self[path].first

      # TODO: This case should not happen, but some docs do not conform to versioned docs (e.g. /api/)
      #       Remove this when all docs conform.
      recent_path ||= path.to_s.sub(%r{/docs/reference/(?:\w+)/}, "/docs/reference/latest/")

      recent_path
    end

    private

    def build_index
      {}.tap do |index|
        paths.each do |path, prior_path|
          set = index[prior_path] || []
          set.unshift(path)
          index[path] = set
        end
      end
    end

    def menus
      @menus ||=
        Miq.menus_dir.glob("ref_menu_*.yml").sort.map(&:to_s).tap do |menus|
          latest = menus.index { |m| m.include?("ref_menu_latest.yml") }
          menus << menus.delete_at(latest) if latest
        end
    end

    def menu_version(menu)
      menu.match(/ref_menu_(\w+)\.yml/).captures[0]
    end

    def paths
      menus.flat_map { |menu| paths_in_menu(menu) }
    end

    def paths_in_menu(menu)
      contents = YAML.load_file(menu)

      # ref menus have a bonus set of initial keys, so remove those and then recurse
      contents = contents.values

      paths_in_menu_contents(contents).each_slice(2).to_a
    end

    def paths_in_menu_contents(contents)
      return [] if contents.blank?

      contents.flat_map do |c|
        path_pair(c["path"], c["prior"]) + paths_in_menu_contents(c["children"])
      end
    end

    def path_pair(path, prior_path)
      path ? [path, prior_path || prior_path_for(path)] : []
    end

    def versions
      @versions ||= menus.map { |m| menu_version(m) }.compact
    end

    def prior_versions
      @prior_versions ||= versions.reverse.each_cons(2).to_h
    end

    def path_version(path)
      path.to_s.match(%r{/docs/reference/(\w+)/}).captures[0]
    end

    def prior_path_for(path)
      prior_version = prior_versions[path_version(path)]
      return nil if prior_version.nil?

      path.to_s.sub(%r{/docs/reference/(?:\w+)/}, "/docs/reference/#{prior_version}/")
    end
  end
end
