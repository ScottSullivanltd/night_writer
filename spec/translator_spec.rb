require './lib/translator'
require 'pry'

RSpec.describe Translator do
  context "Test one character" do
    before (:each) do
      @message = 'a'
      @translator = Translator.new(@message)
    end

    it 'exists' do
      expect(@translator).to be_an_instance_of(Translator)
    end

    it 'returns first row of given character in braille' do
      @translator.braille_row_one
      expected = {
        one: ['0.']
      }
      expect(@translator.braille_text).to eq(expected)
    end

    it 'returns second row of given character in braille' do
      @translator.braille_row_one
      @translator.braille_row_two
      expected = {
        one: ['0.'],
        two: ['..']
      }
      expect(@translator.braille_text).to eq(expected)
    end

    it 'returns third row of given character in braille' do
      @translator.braille_row_one
      @translator.braille_row_two
      @translator.braille_row_three
      expected = {
        one: ['0.'],
        two: ['..'],
        three: ['..']
      }
      expect(@translator.braille_text).to eq(expected)
    end

    it 'adds line breaks' do
      @translator.braille_row_one
      @translator.braille_row_two
      @translator.braille_row_three
      @translator.add_line_breaks
      expected = {
        one: ['0.', "\n"],
        two: ['..', "\n"],
        three: ['..', "\n"]
      }
      expect(@translator.braille_text).to eq(expected)
    end

    it 'returns the character as completed braille' do
      @translator.braille_row_one
      @translator.braille_row_two
      @translator.braille_row_three
      @translator.add_line_breaks
      expected = "0.\n..\n..\n"
      expect(@translator.join_rows).to eq(expected)
    end
  end

  context "Test two characters" do
    before (:each) do
      @message = 'ab'
      @translator = Translator.new(@message)
    end

    it 'returns the characters as completed braille' do
      @translator.braille_row_one
      @translator.braille_row_two
      @translator.braille_row_three
      @translator.add_line_breaks
      expected = "0.0.\n..0.\n....\n"
      expect(@translator.join_rows).to eq(expected)
    end

  end
end
