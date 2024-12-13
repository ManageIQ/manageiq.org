require "jekyll/converters/scss"
require "bootstrap-sass"
require "font-awesome-sass"

# sass/load_paths configuration in _config.yml only supports hardcoded paths,
# so we override to add in the paths from the gems dynamically.
module SassLoader
  def user_sass_load_paths
    super + [
      Bootstrap.stylesheets_path,
      FontAwesome::Sass.stylesheets_path
    ]
  end
end

Jekyll::Converters::Scss.prepend(SassLoader)
