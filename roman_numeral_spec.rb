$LOAD_PATH.unshift File.dirname(__FILE__)

require 'rspec'
require 'roman_numeral'

describe RomanNumeral do

  describe 'new' do
    it 'raises an exception if the numerals are invalid' do
      expect{RomanNumeral.new('IIV')}.to raise_error('Invalid Numerals')
    end
  end

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

    it 'returns the sum of the symbols' do
      RomanNumeral.new('MDCLXVI').to_integer.should == 1666
    end

    it 'returns the correct value when numerals are reversed (e.g. IX == 9)' do
      RomanNumeral.new('IX').to_integer.should == 9
    end

    it 'returns the correct value numerals upto MMMCMXCIX' do
      RomanNumeral.new('MMMCMXCIX').to_integer.should == 3999
    end

  end
end

