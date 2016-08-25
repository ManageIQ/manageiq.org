require "test_helper"

class GuidesTest < Minitest::Test
  def setup
    ENV["MIQ_GUIDES_DIR"] = File.expand_path("../../../fixtures/guides", __FILE__)
    @dir = Pathname.new(ENV["MIQ_GUIDES_DIR"])
    @subject = Miq::Guides.new
  end

  def teardown
    reset_fixture
  end

  def test_setting_dir_from_env
    assert_equal @dir, @subject.guides_dir
  end

  def test_adding_front_matter
    @subject.add_front_matter

    assert_equal "---\n", File.readlines(has_yaml)[0]
    assert_equal "---\n", File.readlines(no_yaml)[0]
  end

  def test_adding_front_matter_does_not_add_extra_dashes
    @subject.add_front_matter

    assert_equal "Has front matter\n", File.readlines(has_yaml)[3]
  end

  private

  def has_yaml
    @dir.join("has_yaml.md")
  end

  def no_yaml
    @dir.join("no_yaml.md")
  end

  def reset_fixture
    File.open(has_yaml, 'w') do |f|
      f.puts "---\n"
      f.puts "foo: bar"
      f.puts "---\n"
      f.puts "Has front matter\n"
    end

    File.open(no_yaml, 'w') do |f|
      f.puts "Without front matter"
    end
  end
end
