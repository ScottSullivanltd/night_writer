require './lib/text_to_braille'
require 'pry'

RSpec.describe TextToBraille do
  it "exists" do
    english_text = TextToBraille.new

    expect(english_text).to be_an_instance_of(TextToBraille)
  end
end
