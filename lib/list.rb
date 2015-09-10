require_relative 'node'
require 'pry'

class List # ruby ./lib/jungle_beats.rb beats.txt

  attr_accessor :head, :data

  def initialize(input_music=nil)
    @head = Node.new
    @tail = nil
    if input_music == nil
    else
      @input_music = File.open(input_music).read.split(" ")
    end
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

  def append_beat(*data)
    node = @head
    while node.next != nil
      node = node.next
    end
    data.each do |beat|
      node.next = Node.new(beat)
      node = node.next
    end
  end

  def prepend_beat(*data)
    node = @head
    if node.nil?
      node = data
    else
      node.next = @head
      data.each do |beat|
        @head = Node.new(beat)
      end
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

  def count_beats
    count = 0
    current = @head
    while current
      count += 1
      current = current(node.next)
    end
    count
  end

  def play_beats
    `say -r 500 -v Boing #{@input_music}` # where ding string is manipulated text
    puts "Played #{count_beats} sounds from `#{@input_music}`"
  end

end
