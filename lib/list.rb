require_relative 'node'
require 'pry'

class List # ruby ./lib/jungle_beats.rb beats.txt

  attr_accessor :head, :list, :input_music, :text, :count

  def initialize(input_music)
    @input_music = File.open(input_music).read.split(" ")
    @head = nil
    @count = 0
    binding.pry
  end

  def convert_input_music_to_list

    input_music.map do |beat|

    end
  end

  def append_beat(node)
    count += 1
    if @head == nil
      @head = node
      tail = node
    else
      node.next = head
      @head = node
    end
  end

  def prepend_beat(node)
    count += 1
    if head == nil
      head = node
      tail = node
    else
      tail.next = node
      tail = node
    end
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
    puts "Played #{count} sounds from `#{input_music}`"
  end

end
