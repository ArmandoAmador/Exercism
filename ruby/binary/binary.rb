class Binary
  def self.to_decimal(str)
    check_string_is_binary(str)
    convert_binary_string_to_decimal(str)
  end

  def self.check_string_is_binary(str)
    raise ArgumentError if /[^0-1]/ =~ str
  end

  def self.convert_binary_string_to_decimal(str)
    str.chars.reverse.each_with_index.inject(0) do |sum, (number, index)|
      sum + (number.to_i * (2**index))
    end
  end
end
