require_relative 'node'
require 'pry'

class List # ruby ./lib/jungle_beats.rb beats.txt

  attr_accessor :input_music, :text, :head_node, :total_beats

  def initialize(input_music)
    @input_music = input_music
    @text = File.open(input_music).read.split(" ")
    @head_node = head_node # "state" modeled with instance variables
    @total_beats = total_beats # DRY sounds_played?
  end

  def manipulate_or_query_the_beats(beat)
    # @node = new_node.next
    # input_music.map do |beat|
  end

  def append_beat_to_end_of_list
    # append an element to the end of the list
  end

  def prepend_beat_to_beginning_of_list
    # prepend an element at the beginning of the list
  end

  def insert_beat_or_beats_in_any_position_of_list
    # insert one or more elements at an arbitrary position in the list
  end

  def check_if_list_includes_beat
    # includes? gives back true or false whether the supplied value is in the list
  end

  def remove_one_or_more_beats_from_end_of_list
    # pop or more elements from the end of the list
  end

  def count_number_of_beats_in_list
    # count the number of elements in the list
    total_beats = text.count
    puts total_beats
  end

  def play_the_beats
    `say -r 500 -v Boing "ding, dah, oom, oom"` # where ding string is manipulated text
    sounds_played = text.count
    puts "Played #{sounds_played} sounds from `#{input_music}`"
  end

end
