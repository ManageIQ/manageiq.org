require "test_helper"

class RefVersionsTest < Minitest::Test
  def test_paths_for_with_ref_doc
    paths = Miq::RefVersions.instance.paths_for("/docs/reference/euwe/doc-Installing_on_Google_Compute_Engine/miq/index.html")

    assert_equal "/docs/reference/latest/installing_on_google_compute_engine/index.html",           paths["latest"]
    assert_equal "/docs/reference/ivanchuk/doc-Installing_on_Google_Compute_Engine/miq/index.html", paths["ivanchuk"]
    assert_equal "/docs/reference/euwe/doc-Installing_on_Google_Compute_Engine/miq/index.html",     paths["euwe"]

    # Check that the list is sorted in reverse chronological order
    assert_equal "latest", paths.keys.first
    assert_equal "euwe",   paths.keys.last
  end
end
