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

  def test_append_one_beat_to_list
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

  def test_append_three_beats_to_list
    list = List.new
    list.convert_input_music_to_linked_list(['bee'])
    list.append_beat("bah", "dee", "daa")
    assert_equal "daa", list.head.next.next.next.data
  end

  def test_append_five_beats_to_end_of_list
    list = List.new
    list.convert_input_music_to_linked_list(['one'])
    list.append_beat("two", "three", "four", "five", "six")
    assert_equal "six", list.head.next.next.next.next.next.data
  end

  def test_append_ten_beats_to_end_of_list
    list = List.new
    list.convert_input_music_to_linked_list(['one'])
    list.append_beat("two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven")
    assert_equal "eleven", list.head.next.next.next.next.next.next.next.next.next.next.data
  end

  def test_prepend_one_beat_to_list
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

  def test_prepend_three_beats_to_list
    list = List.new
    list.convert_input_music_to_linked_list(['bee'])
    list.prepend_beat("bah", "dee", "daa")
    assert_equal "daa", list.head.data
  end

  def test_prepend_five_beats_to_end_of_list
    list = List.new
    list.convert_input_music_to_linked_list(['one'])
    list.prepend_beat("two", "three", "four", "five")
    assert_equal "five", list.head.data
  end

  def test_prepend_ten_beats_to_end_of_list
    list = List.new
    list.convert_input_music_to_linked_list(['one'])
    list.prepend_beat("two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven")
    assert_equal "eleven", list.head.data
  end

  def test_remove_one_beat_from_end_of_list
    list = List.new
    list.convert_input_music_to_linked_list(["one", "two", "three"])
    popped_beats = list.pop_beat(1)
    assert_equal "three", popped_beats
  end

  def test_remove_multiple_beats_from_end_of_list
    list = List.new
    list.convert_input_music_to_linked_list(["one", "two", "three"])
    popped_beats = list.pop_beat(2)
    assert_equal "two three", popped_beats
  end

  def test_removing_five_beets_in_list
    list = List.new
    list.convert_input_music_to_linked_list(["one", "two", "three", "four", "five", "six"])
    popped_beats = list.pop_beat(5)
    assert_equal "two three four five six", popped_beats
  end

  ##### FIX HERE ####
  def test_insert_beat_in_arbitrary_position_of_list
    skip
    list = List.new
    list.convert_input_music_to_linked_list(["one", "two", "three"])
    list.insert_beat_in_list(2, "four")
    assert_equal ("one four two three")
  end

  def test_insert_multiple_beats_in_arbitrary_position_of_list
    skip
  end

  def test_inserting_beats_beyond_length_of_list
    skip
    # inserting elements at a position beyond the length of the list
  end

  def test_check_if_list_includes_beat
    list = List.new
    list.convert_input_music_to_linked_list(['bee'])
    list.append_beat("bah")
    list.append_beat("dee")
    list.append_beat("dum")
    assert_equal true, list.include?("bah")
  end

  def test_check_if_list_does_not_include_beat
    list = List.new
    list.convert_input_music_to_linked_list(['bee'])
    list.append_beat("bah")
    list.append_beat("dee")
    list.append_beat("dum")
    assert_equal false, list.include?("zip")
  end

  def test_count_number_of_beats_in_list
    list = List.new
    list.convert_input_music_to_linked_list(["bee"])
    list.append_beat("bah")
    list.append_beat("dee")
    list.append_beat("dum")
    assert_equal 4, list.count_beats
  end

  def test_play_the_beats
    skip
    list = List.new
    list.convert_input_music_to_linked_list(["bee", "bah", "dee", "doo"])
    list.play
    assert
  end

end
