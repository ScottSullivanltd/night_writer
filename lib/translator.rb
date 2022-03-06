require 'pry'
require './lib/text_to_braille'

class Translator
  attr_reader :message

  def initialize(message)
    @message = message.chars
  end
end
