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
end
