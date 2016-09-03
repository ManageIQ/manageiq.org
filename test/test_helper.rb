require "minitest/autorun"
require "pathname"

require_relative "../lib/miq"
require_relative "../site/_plugins/miq"

module Miq::TestHelpers
  def test_root
    Pathname.new File.expand_path("../", __FILE__)
  end

  def fixtures_path
    test_root.join("fixtures")
  end
end

class Minitest::Test
  include Miq::TestHelpers
end
