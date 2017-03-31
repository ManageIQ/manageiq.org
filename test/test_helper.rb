require "pathname"
require "minitest/autorun"
require "minitest/reporters"
Minitest::Reporters.use!

require_relative "../lib/miq"

module Miq::TestHelpers
  def project_root
    Pathname.new File.expand_path("../../", __FILE__)
  end

  def test_root
    project_root.join('test')
  end

  def fixtures_path
    test_root.join("fixtures")
  end

  def clear_env
    ENV["MIQ_BASE_DIR"]     = nil
    ENV["MIQ_BUNDLER"]      = nil
    ENV["MIQ_DOCS_DIR"]     = nil
    ENV["MIQ_TMP_DIR"]      = nil
    ENV["MIQ_GUIDES_DIR"]   = nil
    ENV["MIQ_LOG_DEST"]     = nil
    ENV["MIQ_REF_BRANCH"]   = nil
    ENV["MIQ_REF_BRANCHES"] = nil
    ENV["MIQ_REF_DIR"]      = nil
    ENV["MIQ_REF_REPO"]     = nil
    ENV["MIQ_REF_SRC"]      = nil
    ENV["MIQ_REF_TMP"]      = nil
    ENV["MIQ_SITE_DEST"]    = nil
    ENV["MIQ_SITE_SOURCE"]  = nil
  end

  def clear_files(path)
    FileUtils.rm(Dir.glob("#{path}/*"))
  end
end

class Minitest::Test
  include Miq::TestHelpers
end
