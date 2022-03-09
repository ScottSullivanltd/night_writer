require './lib/text_to_braille'
require './lib/translator'
require 'pry'

message_file = File.open(ARGV[0], 'r')

file_text = message_file.read.chomp

message_file.close

puts "Created '#{ARGV[1]}' containing #{file_text.length} characters"

text_convert = Translator.new(file_text)
text_convert.braille_row_one
text_convert.braille_row_two
text_convert.braille_row_three

braille_file = File.open(ARGV[1], 'w')

braille_file.write(text_convert.return_braille_message)

braille_file.close
