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

  def join_rows
    @braille_text[:one].join + @braille_text[:two].join + @braille_text[:three].join
  end

end
