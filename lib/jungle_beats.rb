require_relative 'list'

input_music = ARGV[0]
list = List.new(input_music).play_the_beats
list.convert_input_music_to_linked_list
