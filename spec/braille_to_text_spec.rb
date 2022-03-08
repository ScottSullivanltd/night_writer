require './lib/braille_to_text'
require 'pry'

RSpec.describe BrailleToText do
  it "exists" do
    braille_text = BrailleToText.new
    expect(braille_text).to be_an_instance_of(BrailleToText)
  end

  it "creates a dictionary of braille characters as a hash" do
    braille_characters = {
      '0.....' => 'a',
      '0.0...' => 'b',
      '00....' => 'c',
    }
    expect(braille_characters.class).to eq(Hash)
  end

  it "has Braille characters as a key and corresponding english character as value" do
    braille_characters = {
      '0.....' => 'a',
      '0.0...' => 'b',
      '00....' => 'c',
    }
    expect(braille_characters['0.....']).to eq('a')
    expect(braille_characters['0.0...']).to eq('b')
  end

end
