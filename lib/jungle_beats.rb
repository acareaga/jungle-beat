require_relative 'list'
require 'pry'

input_music = ARGV[0]
List.new(input_music).play_the_beats
