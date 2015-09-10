require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/list'

class ListTest < Minitest::Test

  def test_it_exists
    data = List.new
    assert_equal List, data.class
  end

  def test_you_can_input_nil
    data = List.new
    assert data
  end

  def test_list_has_a_head_node
    data = List.new
    assert_equal Node, data.head.class
  end

  def test_list_has_a_tail
    list = List.new
    list.convert_input_music_to_linked_list(['one'])
    list.append_beat("two")
    assert_equal "two", list.tail.data
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

  ##### FIX HERE ####
  def test_append_beat_to_empty_list
    skip # checkout the while/end condition with node.next != nil
    list = List.new
    list.append_beat('bah')
    assert_equal "bah", list.head.data
  end

  def test_append_beat_to_one_node_list
    list = List.new
    list.convert_input_music_to_linked_list(['bee'])
    list.append_beat('bah')
    assert_equal "bah", list.head.next.data
  end

  def test_append_two_beats_to_end_of_list
    list = List.new
    list.convert_input_music_to_linked_list(['one'])
    list.append_beat("two", "three")
    assert_equal "three", list.head.next.next.data
  end

  def test_append_five_beats_to_end_of_list
    list = List.new
    list.convert_input_music_to_linked_list(['one'])
    list.append_beat("two", "three", "four", "five")
    assert_equal "five", list.head.next.next.next.next.data
  end

  def test_prepend_beat_to_one_node_list
    list = List.new
    list.convert_input_music_to_linked_list(['bee'])
    list.prepend_beat('bah')
    assert_equal "bah", list.head.data
  end

  def test_prepend_two_beats_to_beginning_of_list
    list = List.new
    list.convert_input_music_to_linked_list(['one'])
    list.prepend_beat("two", "three")
    assert_equal "three", list.head.data
  end

  def test_prepend_five_beats_to_end_of_list
    list = List.new
    list.convert_input_music_to_linked_list(['one'])
    list.prepend_beat("two", "three", "four", "five")
    assert_equal "five", list.head.data
  end

  def test_remove_one_beat_from_end_of_list
    list = List.new
    list.convert_input_music_to_linked_list(["one", "two", "three"])
    popped_beats = list.pop_beat(1)
    assert_equal "three", popped_beats
  end

  def test_remove_multiple_beats_from_end_of_list
    skip
  end

  def test_removing_more_beats_than_exist_in_list
    skip # Try popping more elements than exist in list
  end

  def test_insert_beat_in_arbitrary_position_of_list
    list = List.new
    list.convert_input_music_to_linked_list(["one", "two", "three"])
    list.insert_beat_in_list(2, "five, six, seven")
    assert_equal
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

  def test_count_number_of_beats_in_list
    skip
  end

  def test_play_the_beats
    skip
  end

end
