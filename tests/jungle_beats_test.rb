require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/jungle_beats'

class JungleBeatsTest < Minitest::Test

  def test_it_exists
    assert ListTest.new("# Test Markdown\n")
  end

  def test_h1
    skip
    text = Header.new("# My Life in Desserts\n")
    assert_equal "<h1>My Life in Desserts</h1>\n", text.html_version
  end

end
