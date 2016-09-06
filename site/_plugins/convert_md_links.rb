require_relative "../../lib/miq"

Jekyll::Hooks.register :pages, :pre_render do |page|
  page.content = Miq::MdLinkConverter.new(page.content).convert
end
