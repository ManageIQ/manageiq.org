require "test_helper"

class DefaultsTest < Minitest::Test
  def setup
    clear_env
  end

  def test_default_working_dir
    assert_equal project_root, Miq.working_dir
  end

  def test_default_dest_dir
    assert_equal project_root.join('dest'), Miq.dest_dir
  end

  def test_default_source_dir
    assert_equal project_root.join('site'), Miq.site_dir
  end

  def test_default_docs_dir
    assert_equal project_root.join('site', 'docs'), Miq.docs_dir
  end

  def test_default_tmp_dir
    assert_equal project_root.join('tmp'), Miq.tmp_dir
  end

  def test_default_guides_dir
    assert_equal project_root.join('site', 'docs', 'guides'), Miq.guides_dir
  end

  def test_default_reference_dir
    assert_equal project_root.join('site', 'docs', 'reference'), Miq.reference_dir
  end
end

class OverridesTest < Minitest::Test
  def setup
    ENV["MIQ_SITE_DEST"]   = "/tmp/my_dest"
    ENV["MIQ_SITE_SOURCE"] = "/tmp/my_source"
    ENV["MIQ_TMP_DIR"]     = "/tmp/my_temp"

    ENV["MIQ_DOCS_DIR"]    = "/tmp/my_docs"
    ENV["MIQ_GUIDES_DIR"]  = "/tmp/my_guides"
    ENV["MIQ_REF_DIR"]     = "/tmp/my_ref"
  end

  def teardown
    clear_env
  end

  def test_override_dest_dir
    assert_equal Pathname.new('/tmp/my_dest'), Miq.dest_dir
  end

  def test_override_source_dir
    assert_equal Pathname.new('/tmp/my_source'), Miq.site_dir
  end

  def test_override_docs_dir
    assert_equal Pathname.new('/tmp/my_temp'), Miq.tmp_dir
  end

  def test_override_guides_dir
    assert_equal Pathname.new('/tmp/my_guides'), Miq.guides_dir
  end

  def test_override_ref_dir
    assert_equal Pathname.new('/tmp/my_ref'), Miq.reference_dir
  end
end
