require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/node'

class NodeTest < Minitest::Test

  def test_it_exists
    assert NodeTest.new("# Test Markdown\n")
  end

  def test_node_when_nil
    skip
    text = Header.new("# My Life in Desserts\n")
    assert_equal "<h1>My Life in Desserts</h1>\n", text.html_version
  end

  def test_single_node_data
    skip
  end

  def test_position_of_head_node
    skip
  end

  def test_next_node_move
    skip
  end

  def test_multiple_node_data
    skip
  end

end
