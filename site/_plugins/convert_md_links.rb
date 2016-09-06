require_relative "../../lib/miq"

Jekyll::Hooks.register :pages, :pre_render do |page|
  page.content = Miq.md_link_to_html(page.content)
end
