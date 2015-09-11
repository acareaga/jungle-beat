require_relative 'node'
require 'pry'

class List # ruby ./lib/jungle_beats.rb beats.txt

  attr_accessor :head, :tail, :data, :position

  def initialize(input_music=nil)
    @head = Node.new(data)
    @tail = tail
    @input_file_name = input_music
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

  def tail
    node = @head
    while node.next != nil
      node = node.next
    end
    node
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
    data.size
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
    data.size
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
    all
  end

  def include?(word)
    node = @head
    until node.data == word || node.next == nil
      node = node.next
    end
    node.data == word
  end

  def find(position)
    node = @head
    counter = 1
    while position != counter
      counter += 1
      node = node.next
    end
    node.data
  end

  def all
    all_nodes = []
    node = @head
    while node != nil
      all_nodes << node.data
      node = node.next
    end
    all_nodes
  end

  def count_beats
    count = 1
    node = @head
    while node.next != nil
      node = node.next
      count += 1
    end
    count
  end

  def play_beats
    `say -r 500 -v Boing "#{@input_music}"`
    puts "Played #{@input_music.size} sounds from `#{@input_file_name}`"
  end

  def play
    `say -r 500 -v Boing "#{all}"`
    count_beats
  end

end

list = List.new
list.convert_input_music_to_linked_list(["bee"])
list.append_beat("bah")
list.append_beat("dee")
list.append_beat("dum")
list.play
list.all
