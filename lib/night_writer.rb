message_file = File.open(ARGV[0], "r")

file_text = message_file.read

message_file.close

puts "Created '#{ARGV[0]}' containing #{file_text.length} characters"

braille_file = File.open(ARGV[1], "w")

braille_file.close
