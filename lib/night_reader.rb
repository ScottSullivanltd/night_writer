require './lib/braille_to_text'
require './lib/interpretor'
require 'pry'

braille_file = File.open(ARGV[0], 'r')

file_text = braille_file.read.chomp

braille_file.close

puts "Created '#{ARGV[1]}' containing #{file_text.length} characters"

text_file = File.open(ARGV[1], 'w')

text_file.close
