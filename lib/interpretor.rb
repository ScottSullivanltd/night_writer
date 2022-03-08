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

  def to_english_character
    grouped_chars = Hash.new { |h, k| h[k] = [] }
    convert_from_braille.each do |row|
      row.each.with_index do |char, index|
        grouped_chars[index] << char
      end
    end
    grouped_chars
  end

  def join_rows
    to_english_character.values.map do |row|
      row.join
    end
  end

end
