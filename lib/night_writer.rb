read_file = File.open(ARGV[0], "r")

file_text = read_file.read

read_file.close

puts "Created '#{ARGV[0]}' containing #{file_text.length} characters"
