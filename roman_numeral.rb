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
    previous_value = 0
    # Enumerate the numerals from right to left so a symbol can be compared
    # with the previous symbol and subtracted from the total if is less.
    @numerals.reverse.each_char do |symbol|
      value = get_symbol_value(symbol)
      if value >= previous_value then
        total += value
      else
        total -= value
      end
      previous_value = value
    end
    return total
  end

  def get_symbol_value(symbol)
    return SYMBOLS.fetch symbol
  end

end

