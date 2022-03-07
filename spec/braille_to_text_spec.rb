require './lib/braille_to_text'
require 'pry'

RSpec.describe BrailleToText do
  it "exists" do
    braille_text = BrailleToText.new
    expect(braille_text).to be_an_instance_of(BrailleToText)
  end
end
