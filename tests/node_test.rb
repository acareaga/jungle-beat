require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/node'

class NodeTest < Minitest::Test

  def test_it_exists
    assert Node.new("dee")
  end

  def test_value_returns_input
    beat = Node.new("beep")
    assert_equal "beep", beat.data
  end

  def test_next_returns_nil
    beat = Node.new("bop")
    assert_equal nil, beat.next
  end

end
