require './lib/translator'
require 'pry'

RSpec.describe Translator do
  it 'exists' do
    message = 'ab'
    translator = Translator.new(message)
    expect(translator).to be_an_instance_of(Translator)
  end
end
