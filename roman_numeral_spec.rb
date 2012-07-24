$LOAD_PATH.unshift File.dirname(__FILE__)

require 'rspec'
require 'roman_numeral'

describe RomanNumeral do

  describe 'to_integer' do

    it 'returns the value 1 for symbol I' do
      RomanNumeral.new('I').to_integer.should == 1
    end

    it 'returns the correct value each symbol up to M' do
      symbols = %w(I V X L C D M)
      values = [1, 5, 10, 50, 100, 500, 1000]
      symbols.each_with_index do |symbol, index|
        RomanNumeral.new(symbol).to_integer.should == values[index]
      end
    end

  end
end
