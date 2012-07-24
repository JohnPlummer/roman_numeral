class RomanNumeral

  SYMBOLS = {'I' => 1,
             'V' => 5,
             'X' => 10,
             'L' => 50,
             'C' => 100,
             'D' => 500,
             'M' => 1000}

  def initialize(numerals)
    @numerals = numerals
  end

  def to_integer
    total = 0
    @numerals.each_char do |symbol|
      total += get_symbol_value(symbol)
    end
    return total
  end

  def get_symbol_value(symbol)
    return SYMBOLS.fetch symbol
  end

end

