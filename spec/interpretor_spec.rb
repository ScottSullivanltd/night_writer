require './lib/interpretor'
require 'pry'

RSpec.describe Interpretor do
  context "Test one Braille character" do
    before :each do
      @braille_message = '0.....'
      @interpretor = Interpretor.new(@braille_message)
    end

    it 'exists' do
      expect(@interpretor).to be_an_instance_of(Interpretor)
    end

    it "splits Braille message into sets of two Braille text characters" do
      expect(@interpretor.convert_from_braille).to eq([["0.", "..", ".."]])
    end

    it "groups the Braille text characters into a hash by index" do
      expect(@interpretor.to_english_character).to eq({0=>["0."], 1=>[".."], 2=>[".."]})
    end

  end
end
