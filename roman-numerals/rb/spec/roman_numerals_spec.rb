require 'rspec'
require 'roman_numerals'

describe RomanNumerals do

  before do
    @numerals = RomanNumerals.new
  end

  after do
    @numerals = nil
  end

  examples = { 'I'   => 1,
               'II'  => 2,
               'III' => 3,
               'IV'  => 4,
               'V'   => 5 }

  describe "turning integers into roman numerals" do

    examples.each do |numeral, integer|
      it "converts #{integer} into #{numeral}" do
        @numerals.convert(integer).should == numeral
      end
    end

  end
end
