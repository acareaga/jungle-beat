require_relative 'node'
require 'pry'

class List # ruby ./lib/jungle_beats.rb beats.txt

  attr_accessor :head, :tail, :data

  def initialize(input_music=nil)
    @head = Node.new
    @tail = tail
    if input_music == nil
    else
      @input_music = File.open(input_music).read.split(" ")
    end
  end

  def tail
    node = @head
    while node.next != nil
      node = node.next
    end
    node
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
    return data.size
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
    return data.size
  end

  def remove_last_beat
    node = @head
    while node.next.next
      node = node.next
    end
    removed_node = node.next
    node.next = nil
    removed_node.data
  end

  def pop_beat(num)
    popped_beats = []
    num.times do
      popped_beats << remove_last_beat
    end
    popped_beats.reverse.join(" ")
  end

  def insert_beat_in_list(position, data)
    node = @head
    counter = 0
    if node.next.nil?
      append_beat(data)
    else
      while position != counter
        previous = node
        node = node.next
        counter += 1
      end
      new_node = Node.new(data)
      previous.next = new_node
      new_node.next = node
    end
  end

  def include?(data)
    node = @head
    while (node.value != data) || (node.value == nil)
      node = node.next
    end
    node.data == data
  end

  def find(*position)
    node = @head
    counter = 0
    while position != counter
      node = node.next
      counter += 1
    end
    node.value
  end

  def all
    all_nodes = []
    node = @head
    until node.next == nil
      all_nodes << node.data
    end
    all_nodes
  end

  def count_beats
    count = 0
    node = @head
    while node.next != nil
      count += 1
      node = node(node.next)
    end
    count
  end

  def play_beats
    `say -r 500 -v Boing "#{@input_music}"` # where ding string is manipulated text
    puts "Played #{@input_music.size} sounds from `#{@input_music}`"
  end

end
