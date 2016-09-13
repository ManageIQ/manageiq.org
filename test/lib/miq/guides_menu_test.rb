require "test_helper"

class GuidesMenuTest < Minitest::Test
  def setup
    @dir = fixtures_path.join("docs", "guides")
    ENV["MIQ_GUIDES_DST"] = @dir.to_s
    ENV["MIQ_SITE_SOURCE"] = fixtures_path.to_s
    @subject = Miq::GuidesMenu.new
  end

  def test_menu_tree
    assert_equal expected, @subject.menu_data
  end

  private

  def expected
    {
      "title" => "Guides",
      "children" => [
        {
          "title" => "Architecture",
          "path"  => "/docs/guides/architecture.html",
          "children" => [
            {
              "title" => "Enterprise",
              "path" => "/docs/guides/architecture/enterprise"
            }
          ]
        },
        {
          "title" => "Subdir",
          "children" => [
            {
              "title" => "Nested File",
              "path" => "/docs/guides/subdir/nested_file"
            }
          ]
        },
        { "title" => "Has Yaml", "path" => "/docs/guides/has_yaml" },
        { "title" => "No Yaml", "path" => "/docs/guides/no_yaml" }
      ]
    }
  end
end
