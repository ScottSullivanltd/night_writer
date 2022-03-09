require './lib/text_to_braille'
require 'pry'

RSpec.describe TextToBraille do
  it "exists" do
    english_text = TextToBraille.new
    expect(english_text).to be_an_instance_of(TextToBraille)
  end

  it "creates a dictionary of characters as a hash" do
    characters = {
      ' ' => [['..'], ['..'], ['..']],
      'a' => [['0.'], ['..'], ['..']],
      'b' => [['0.'], ['0.'], ['..']]
    }
    expect(characters.class).to eq(Hash)
  end

  it "has english character as a key and corresponding braille as value" do
    characters = {
      ' ' => [['..'], ['..'], ['..']],
      'a' => [['0.'], ['..'], ['..']],
      'b' => [['0.'], ['0.'], ['..']]
    }
    expect(characters['a']).to eq([['0.'], ['..'], ['..']])
  end

  it "has the braille values in an array" do
    characters = {
      ' ' => [['..'], ['..'], ['..']],
      'a' => [['0.'], ['..'], ['..']],
      'b' => [['0.'], ['0.'], ['..']]
    }
    expect(characters['a'].class).to eq(Array)
  end
end
