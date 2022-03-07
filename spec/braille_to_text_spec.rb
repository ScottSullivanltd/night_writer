require './lib/braille_to_text'
require 'pry'

RSpec.describe BrailleToText do
  it "exists" do
    braille_text = BrailleToText.new
    expect(braille_text).to be_an_instance_of(BrailleToText)
  end

  it "creates a dictionary of braille characters as a hash" do
    braille_characters = {
      ['0.', '..', '..'] => 'a',
      ['0.', '0.', '..'] => 'b',
      ['00', '..', '..'] => 'c',
    }
    expect(braille_characters.class).to eq(Hash)
  end

end
