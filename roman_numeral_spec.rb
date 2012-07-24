$LOAD_PATH.unshift File.dirname(__FILE__)

require 'rspec'
require 'roman_numeral'

describe RomanNumeral do

  describe 'to_integer' do

    it 'returns the value 1 for symbol I' do
      RomanNumeral.new('I').to_integer.should == 1
    end

  end
end
