require 'pry'
require './lib/braille_to_text'

class Interpretor
  attr_reader :message, :braille_text, :english_text

  def initialize(message)
    @message = message.split("\n")
    @braille_text = BrailleToText.new
    @english_text = []
  end

  def convert_from_braille
    @message.map do |row|
      row.chars.each_slice(2).map(&:join)
    end
  end

end
