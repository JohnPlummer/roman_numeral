class RomanNumeral

  SYMBOLS = {'I' => 1,
             'V' => 5,
             'X' => 10,
             'L' => 50,
             'C' => 100,
             'D' => 500,
             'M' => 1000}

  def initialize(numeral)
    @numeral = numeral
  end

  def to_integer
    return SYMBOLS.fetch @numeral
  end

end
