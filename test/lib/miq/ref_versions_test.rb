require "test_helper"

class RefVersionsTest < Minitest::Test
  def test_paths_for_with_legacy_doc
    paths = Miq::RefVersions.instance.paths_for("/docs/reference/euwe/doc-Installing_on_Google_Compute_Engine/miq/index.html")

    assert_equal "/docs/reference/latest/installing_on_google_compute_engine/index.html",           paths["latest"]
    assert_equal "/docs/reference/jansa/installing_on_google_compute_engine/index.html",            paths["jansa"]
    assert_equal "/docs/reference/ivanchuk/doc-Installing_on_Google_Compute_Engine/miq/index.html", paths["ivanchuk"]
    assert_equal "/docs/reference/euwe/doc-Installing_on_Google_Compute_Engine/miq/index.html",     paths["euwe"]

    # Check that the list is sorted in reverse chronological order
    assert_equal "latest", paths.keys.first
    assert_equal "euwe",   paths.keys.last
  end

  def test_paths_for_with_ref_doc
    paths = Miq::RefVersions.instance.paths_for("/docs/reference/jansa/installing_on_google_compute_engine/index.html")

    assert_equal "/docs/reference/latest/installing_on_google_compute_engine/index.html",           paths["latest"]
    assert_equal "/docs/reference/jansa/installing_on_google_compute_engine/index.html",            paths["jansa"]
    assert_equal "/docs/reference/ivanchuk/doc-Installing_on_Google_Compute_Engine/miq/index.html", paths["ivanchuk"]
    assert_equal "/docs/reference/euwe/doc-Installing_on_Google_Compute_Engine/miq/index.html",     paths["euwe"]

    # Check that the list is sorted in reverse chronological order
    assert_equal "latest", paths.keys.first
    assert_equal "euwe",   paths.keys.last
  end

  def test_canonical_path_for_with_ref_doc
    path = Miq::RefVersions.instance.canonical_path_for("/docs/reference/latest/installing_on_google_compute_engine/index.html")
    assert_equal "/docs/reference/latest/installing_on_google_compute_engine/index.html", path

    path = Miq::RefVersions.instance.canonical_path_for("/docs/reference/jansa/installing_on_google_compute_engine/index.html")
    assert_equal "/docs/reference/latest/installing_on_google_compute_engine/index.html", path
  end

  def test_canonical_path_for_with_legacy_ref_doc
    path = Miq::RefVersions.instance.canonical_path_for("/docs/reference/ivanchuk/doc-Installing_on_Google_Compute_Engine/miq/index.html")
    assert_equal "/docs/reference/latest/installing_on_google_compute_engine/index.html", path
  end
end
