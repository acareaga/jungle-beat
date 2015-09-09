require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/list'

class ListTest < Minitest::Test

  def test_it_exists
    assert ListTest.new("# Test Markdown\n")
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

  def test_append_beat_to_end_of_list
    skip
  end

  def test_prepend_beat_to_beginning_of_list
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
