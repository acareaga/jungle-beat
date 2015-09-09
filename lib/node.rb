require_relative 'list'
require 'pry'

class Node

  attr_accessor :value, :next

  def initialize(node)
    Node = Struct.new(:value, :next)
    list = Node.new("dooop", nil)
  end

  def convert_input_music_to_linked_list(value, node)
    return Node.new(value, node)
  end

  def recursive_print(list) # recursively print nodes until end of list
    puts list.value
    recursive_print(list.next) unless list.next == nil
  end

    # takes an array of strings and converts each string to nodes
    # avoid using array in implementation.
    # can it be passed in directly and text (from list) removed above???
  end

  # 1. head of the list
  # 2. data (word/beat) of each node
  # 3. next node

  # "state" modeled with instance variables

end
