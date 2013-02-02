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

  context "between ten and thirty nine" do

    it "converts numbers in the tens" do
      @numerals.convert(14).should == 'XIV'
      @numerals.convert(15).should == 'XV'
      @numerals.convert(19).should == 'XIX'
    end

    it "converts numbers in the twentys" do
      @numerals.convert(21).should == 'XXI'
      @numerals.convert(24).should == 'XXIV'
      @numerals.convert(28).should == 'XXVIII'
    end

    it "converts numbers in the thirtys" do
      @numerals.convert(31).should == 'XXXI'
      @numerals.convert(36).should == 'XXXVI'
      @numerals.convert(39).should == 'XXXIX'
    end
  end

end
