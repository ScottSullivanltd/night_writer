require './lib/interpretor'
require 'pry'

RSpec.describe Interpretor do
  context "Test one Braille character" do
    before (:each) do
      @braille_message = '0.\n..\n..'
      @interpretor = Interpretor.new(@message)
    end

    it 'exists' do
      expect(@interpretor).to be_an_instance_of(Interpretor)
    end

    it 'returns corresponding english character' do
      @interpretor.to_english_character
      expect(@translator.braille_text).to eq('a')
    end

  end
end
