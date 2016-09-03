require_relative "test_helper"

class MiqTest < Minitest::Test
  def test_converting_md_href_to_html
    assert_equal "[my_file](link/to_my_file.html)",
                  Miq.md_link_to_html("[my_file](link/to_my_file.md)")
  end

  def test_converting_md_filename_to_html
    assert_equal "my_file.html", Miq.md_file_to_html("my_file.md")
  end
end

# class DocMenuTest < Minitest::Test
#   def test_tree_of_files
#     menu = Miq::DocMenu.new(File.expand_path("../fixtures/doc_menu", __FILE__))
#
#     expected = {
#       :name => "doc_menu",
#       :children => [
#         "bar.html",
#         "foo.html"
#       ]
#     }
#
#     assert_equal(expected, menu.tree)
#   end
# end
