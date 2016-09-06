require "active_support/core_ext/string/inflections"

module TitleizeFilter
  def titleize(input)
    input.humanize.titlecase
  end
end

Liquid::Template.register_filter(TitleizeFilter)
