class Trinary
  attr_accessor :str

  def initialize(str)
    @str = str
  end

  def to_decimal
    return 0 if /[^0-2]/ =~ str
    str.chars.reverse.each_with_index.inject(0) do |sum, (number, index)|
      sum + (number.to_i * (3**index))
    end
  end
end
