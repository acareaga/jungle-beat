require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/list'

class ListTest < Minitest::Test

  def test_it_exists
    data = List.new
    assert_equal List, data.class
  end

  def test_we_can_input_nil
    data = List.new
    assert data
  end

  def test_list_has_a_head_node
    data = List.new
    assert_equal Node, data.head.class
  end

  def test_convert_music_set_head_value
    data = List.new
    data.convert_input_music_to_linked_list(["bee"])
    assert_equal "bee", data.head.data
  end

  def test_convert_music_set_head_and_second_node
    data = List.new
    data.convert_input_music_to_linked_list(["bee", "bop"])
    assert_equal Node, data.head.next.class
  end

  def test_convert_music_set_head_and_second_node_data
    data = List.new
    data.convert_input_music_to_linked_list(["bee", "bop"])
    assert_equal "bop", data.head.next.data
  end

  def test_convert_music_set_head_and_third_node_data
    data = List.new
    data.convert_input_music_to_linked_list(["bee", "bop",'thum'])
    assert_equal "thum", data.head.next.next.data
  end

  def test_convert_music_set_head_and_fourth_node_data
    data = List.new
    data.convert_input_music_to_linked_list(["bee", "bop",'thum','bah'])
    assert_equal "bah", data.head.next.next.next.data
  end

  def test_append_beat_to_empty_list
    skip
    assert Node.new("data"), node.data
  end

  def test_append_beat_to_one_node_list
    data = List.new
    data.convert_input_music_to_linked_list(['bee'])
    data.append_beat('bah')
    assert "bah", data.head.next.data

  end

  def test_append_beats_to_end_of_list
    skip
    list = List.new("one")
    list.append_beat("two")
    assert_equal "two", list.head.next
  end

  def test_prepend_beat_to_beginning_of_list
    skip
    assert Node.new("boop")
  end


  def test_if_empty_list_includes_anything
    skip
    # Try seeing if an empty list includes anything
  end

  def test_input_music_converts_to_linked_list
    skip
    input_music = List.new("")
    assert_equal "<h1>My Life in Desserts</h1>\n", input_music.list_version
  end

  def test_head_node_exists
    skip
  end

  def test_insert_beat_in_arbitrary_position_of_list
    skip
  end

  def test_insert_multiple_beats_in_arbitrary_position_of_list
    skip
  end

  def test_inserting_beats_beyond_length_of_list
    skip
    # inserting elements at a position beyond the length of the list
  end

  def test_check_if_list_includes_beat
    skip
  end

  def test_remove_beat_from_end_of_list
    skip
  end

  def test_remove_multiple_beats_from_end_of_list
    skip
  end

  def test_removing_more_beats_than_exist_in_list
    skip # Try popping more elements than exist in list
  end

  def test_count_number_of_beats_in_list
    skip
  end

  def test_play_the_beats
    skip
  end

end
