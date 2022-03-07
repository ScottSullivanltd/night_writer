require './lib/interpretor'
require 'pry'

RSpec.describe Interpretor do
  context "Test one character" do
    before (:each) do
      @braille_message = '0.\n..\n..'
      @interpretor = Interpretor.new(@message)
    end

    it 'exists' do
      expect(@interpretor).to be_an_instance_of(Interpretor)
    end
  end
end
