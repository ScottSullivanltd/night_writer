require 'pry'
require './lib/text_to_braille'

class Translator
  attr_reader :message, :braille_text, :english_text

  def initialize(message)
    @message = message.chars
    @english_text = TextToBraille.new
    @braille_text = Hash.new { |h, k| h[k] = [] }
  end

  def braille_row_one
    @message.each do |char|
      @braille_text[:one] << @english_text.characters[char][0]
    end
    @braille_text[:one].flatten!
  end

  def braille_row_two
    @message.each do |char|
      @braille_text[:two] << @english_text.characters[char][1]
    end
    @braille_text[:two].flatten!
  end

  def braille_row_three
    @message.each do |char|
      @braille_text[:three] << @english_text.characters[char][2]
    end
    @braille_text[:three].flatten!
  end

  def add_line_breaks
    @braille_text[:one] << "\n"
    @braille_text[:two] << "\n"
    @braille_text[:three] << "\n"
  end

  def return_braille_message
    row_one = @braille_text[:one].each_slice(40).map {|s| s.join}
    row_two = @braille_text[:two].each_slice(40).map {|s| s.join}
    row_three = @braille_text[:three].each_slice(40).map {|s| s.join}
    index = 0
    string = ""
    row_one.length.times do
      string << "#{row_one[index]}\n#{row_two[index]}\n#{row_three[index]}\n"
      index = index + 1
    end
    string
  end
end
