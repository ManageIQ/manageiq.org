require "minitest/autorun"

require "jekyll"

require File.expand_path("../../_plugins/miq.rb", __FILE__)
require File.expand_path("../../_plugins/miq/doc_menu.rb", __FILE__)
require File.expand_path("../../_plugins/miq/markdown_link_converter.rb", __FILE__)

class MiqTest < Minitest::Test
  def test_converting_md_href_to_html
    assert_equal "[my_file](link/to_my_file.html)",
                  Miq.md_link_to_html("[my_file](link/to_my_file.html)")
  end

  def test_converting_md_filename_to_html
    assert_equal "my_file.html", Miq.md_file_to_html("my_file.md")
  end
end

class DocMenuTest < Minitest::Test
  def test_tree_of_files
    menu = Miq::DocMenu.new(File.expand_path("../dir_fixture", __FILE__))

    expected = {
      :name => "dir_fixture",
      :children => [
        "bar.html",
        "foo.html"
      ]
    }

    assert_equal(expected, menu.tree)
  end
end
