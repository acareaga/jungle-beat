require_relative 'node'
require 'pry'

class List # ruby ./lib/jungle_beats.rb beats.txt

  attr_accessor :head, :data

  def initialize(input_music=nil)
    @head = Node.new
    @tail = nil
    @count = 0
    if input_music == nil
    else
      @input_music = File.open(input_music).read.split(" ")
    end
    @beats = ""
  end

  def convert_input_music_to_linked_list(input_music=@input_music)
     @head.data = input_music.shift
     node = @head

     input_music.each do |beat|
       node.next = Node.new(beat)
       node = node.next
     end
     @head
  end

  def append_beat(data)
    @head.next = Node.new
    is next nil? if it is keep going

    @head.next.data = "bah"
    # @count += 1
    # current = @head
    # while current.next != nil
    #   current = current.next
    # end
    # current.next = Node.new(data)
  end

  def prepend_beat
    count += 1
    if head.nil?
      @head = node
      @tail = node
    else
      @tail.next = node
      @tail = node
    end
  end

  def remove_one_or_more_beats_from_end_of_list
    count -= 1
    return nil if @head.nil?
    node = @head
    @head = @head.next
    return node
  end

  def insert_beat_or_beats_in_any_position_of_list
    # insert one or more elements at an arbitrary position in the list
  end

  def check_if_list_includes_beat
    # includes? gives back true or false whether the supplied value is in the list
  end

  def count_number_of_beats_in_list
    # count the number of elements in the list
    total_beats = text.count
    puts total_beats
  end

  def play_the_beats
    `say -r 500 -v Boing "ding, dah, oom, oom"` # where ding string is manipulated text
    count = @input_music.size
    puts "Played #{count} sounds from `#{@input_music}`"
  end

end
