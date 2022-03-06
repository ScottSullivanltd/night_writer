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

  end
end
