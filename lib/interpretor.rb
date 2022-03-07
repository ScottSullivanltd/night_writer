require 'pry'
require './lib/braille_to_text'

class Interpretor
  attr_reader :message, :braille_text, :english_text

  def initialize(message)
    @message = message
    @braille_text = BrailleToText.new
    @english_text = Hash.new { |h, k| h[k] = [] }
  end
end
