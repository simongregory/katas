require 'rspec'
require 'roman_numerals'

describe RomanNumerals do

  before do
    @numerals = RomanNumerals.new
  end

  after do
    @numerals = nil
  end

  examples = { 'I'    => 1,
               'II'   => 2,
               'III'  => 3,
               'IV'   => 4,
               'V'    => 5,
               'VI'   => 6,
               'VII'  => 7,
               'VIII' => 8,
               'IX'   => 9,
               'X'    => 10
             }

  context "up to ten" do

    examples.each do |numeral, integer|

      it "converts #{integer} into #{numeral}" do
        @numerals.convert(integer).should == numeral
      end

    end

  end

  context "between ten and twenty" do

    it "converts 14 to XIV" do
      @numerals.convert(14).should == 'XIV'
    end

    it "converts 19 to XIX" do
      @numerals.convert(19).should == 'XIX'
    end
  end
end
