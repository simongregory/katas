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

  context "between forty and fifty" do

    it "converts numbers in the fortys" do
      @numerals.convert(40).should == 'XL'
      @numerals.convert(42).should == 'XLII'
      @numerals.convert(45).should == 'XLV'
      @numerals.convert(48).should == 'XLVIII'
      @numerals.convert(49).should == 'XLIX'
    end
  end

  context "between fifty and ninety" do

    it "converts numbers in the fiftys" do
      @numerals.convert(50).should == 'L'
      @numerals.convert(51).should == 'LI'
      @numerals.convert(55).should == 'LV'
      @numerals.convert(59).should == 'LIX'

      @numerals.convert(60).should == 'LX'
      @numerals.convert(61).should == 'LXI'
      @numerals.convert(65).should == 'LXV'
      @numerals.convert(69).should == 'LXIX'

      @numerals.convert(70).should == 'LXX'
      @numerals.convert(71).should == 'LXXI'
      @numerals.convert(75).should == 'LXXV'
      @numerals.convert(79).should == 'LXXIX'

      @numerals.convert(80).should == 'LXXX'
      @numerals.convert(81).should == 'LXXXI'
      @numerals.convert(85).should == 'LXXXV'
      @numerals.convert(89).should == 'LXXXIX'
    end
  end

  context "between ninety and one hundred" do
    it "converts numbers in the nineties" do
      @numerals.convert(90).should == 'XC'
      @numerals.convert(91).should == 'XCI'
      @numerals.convert(95).should == 'XCV'
      @numerals.convert(99).should == 'XCIX'
    end
  end

  context "between one hundred and four hundred" do
    it "converts numbers" do
      @numerals.convert(100).should == 'C'
      @numerals.convert(101).should == 'CI'
      @numerals.convert(109).should == 'CIX'
      @numerals.convert(111).should == 'CXI'
      @numerals.convert(119).should == 'CXIX'
    end
  end
end
