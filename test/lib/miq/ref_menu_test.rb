require "test_helper"

class RefMenuTest < Minitest::Test
  def setup
    clear_env

    @dir = fixtures_path.join("docs", "reference")
    ENV["MIQ_REF_DIR"]     = @dir.to_s
    ENV["MIQ_BASE_DIR"]    = fixtures_path.to_s
    ENV["MIQ_SITE_SOURCE"] = fixtures_path.to_s

    clear_files(Miq.tmp_dir.join('menus'))

    @subject = Miq::RefMenu.new
  end

  def test_menu_tree
    assert_equal expected, @subject.menu_data
  end

  def test_multiple_branches_become_multiple_files
    Miq::RefMenu.build

    assert File.exist?(Miq.tmp_dir.join('menus', 'ref_menu_foo.yml'))
    assert File.exist?(Miq.tmp_dir.join('menus', 'ref_menu_bar.yml'))
    assert File.exist?(Miq.tmp_dir.join('menus', 'ref_menu_latest.yml'))
  end

  private

  def expected
    [
      multiple_children,
      sibling,
      toc_style,
      welcome
    ].inject({}) { |memo, hsh| memo.merge(hsh) }
  end

  def multiple_children
    {
      "RestApi" => {
        "title" => "REST API",
        "children" => [
          {
            "title" => "Appendices",
            "children" => [
              {
                "title" => "Advanced Provisioning Attributes",
                "path"  => "/docs/reference/latest/api/appendices/advanced_provisioning"
              }
            ]
          },
          {
            "title" => "Overview",
            "children" => [
              {
                "title" => "Authentication",
                "path"  => "/docs/reference/latest/api/overview/auth"
              }
            ]
          },
          {
            "title" => "Reference",
            "children" => [
              {
                "title" => "Automation Requests",
                "path"  => "/docs/reference/latest/api/reference/automation_requests"
              }
            ]
          }
        ]
      }
    }
  end

  def sibling
    {
      "RestApiExamples" => {
        "title" => "REST API Examples",
        "children" => [
          {
            "title" => "VM Management",
            "children" => [
              {
                "title" => "Add event to a VM",
                "path"  => "/docs/reference/latest/api/examples/add_event_vm"
              }
            ]
          }
        ]
      }
    }
  end

  def toc_style
    {
      "SquashMe" => {
        "title" => "Squash Me",
        "path" => "/docs/reference/latest/squashme"
      }
    }
  end

  def welcome
    {
      "welcome" => {
        "title" => "Welcome",
        "path" => "/docs/reference/latest/welcome"
      }
    }
  end
end
