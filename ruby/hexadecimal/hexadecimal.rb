require 'pry'
class Hexadecimal
  attr_accessor :str

  def initialize(str)
    @str = str.downcase
  end

  def to_decimal
    return 0 if str[/\H/]
    str.chars.reverse.each_with_index.inject(0) do |sum, (number, index)|
      sum + (conversion[number.to_sym] * (16**index))
    end
  end

  def conversion
    {
      '0': 0,
      '1': 1,
      '2': 2,
      '3': 3,
      '4': 4,
      '5': 5,
      '6': 6,
      '7': 7,
      '8': 8,
      '9': 9,
      'a': 10,
      'b': 11,
      'c': 12,
      'd': 13,
      'e': 14,
      'f': 15,
    }
  end
end
