# Jekyll::Page#url is memoized on first call, but this causes issues with the
#   paginator.  As such, we get the URL and then remove the memoization.
def extract_page_url(page)
  had_url = page.instance_variable_defined?(:@url)
  page.url.tap do
    page.instance_variable_set(:@url, nil) unless had_url
  end
end

Jekyll::Hooks.register :pages, :post_init do |page|
  page.data['canonical_url'] ||= extract_page_url(page)
end

Jekyll::Hooks.register :posts, :post_init do |post|
  post.data['canonical_url'] ||= extract_page_url(post)
end

Jekyll::Hooks.register :documents, :post_init do |doc|
  doc.data['canonical_url'] ||= extract_page_url(doc)
end
