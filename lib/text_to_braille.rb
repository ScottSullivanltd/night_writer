require 'pry'

class TextToBraille
  attr_reader :characters

  def initialize
    @characters = {
      ' ' => [['..'], ['..'], ['..']],
      'a' => [['0.'], ['..'], ['..']],
      'b' => [['0.'], ['0.'], ['..']]
    }
  end
end
