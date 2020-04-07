require "test_helper"

class MdLinkConverterTest < Minitest::Test
  def setup
    ENV["MIQ_GUIDES_DIR"] = nil
  end

  def test_converting_md_href
    original = "[Title](link/to_my_file.md)"
    expected = "[Title](link/to_my_file)"

    assert_equal expected, Miq::MdLinkConverter.new(original).convert
  end

  def test_rewriting_absolute_path
    original = "[My Title](/providers/container.md)"
    expected = "[My Title](/docs/guides/providers/container)"

    assert_equal expected, Miq::MdLinkConverter.new(original).convert
  end

  def test_multiline_conversion
    original = "[My Title](/providers/container.md) \n some text \n [My Title](path/to/file.md)"
    expected = "[My Title](/docs/guides/providers/container) \n some text \n [My Title](path/to/file)"

    assert_equal expected, Miq::MdLinkConverter.new(original).convert
  end

  def test_converting_external_md_href
    original = "[Title](https://github.com/ManageIQ/ui-components/blob/master/README.md)"
    expected = "[Title](https://github.com/ManageIQ/ui-components/blob/master/README.md)"

    assert_equal expected, Miq::MdLinkConverter.new(original).convert
  end

  def test_converting_internal_md_href
    original = "[Title](https://manageiq.org/blah/README.md)"
    expected = "[Title](https://manageiq.org/blah/README)"

    assert_equal expected, Miq::MdLinkConverter.new(original).convert
  end
end
