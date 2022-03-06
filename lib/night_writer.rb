require './lib/text_to_braille'
require './lib/translator'
require 'pry'

message_file = File.open(ARGV[0], 'r')

file_text = message_file.read
message = file_text.chomp

message_file.close

puts "Created '#{ARGV[0]}' containing #{file_text.length - 1} characters"

braille_file = File.open(ARGV[1], 'w')

braille_file.close
