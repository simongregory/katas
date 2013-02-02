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
               'X'    => 10,
               'XIV'  => 14,
               'XV'   => 15,
               'XIX'  => 19,
               'XXI' => 21,
               'XXIV' => 24,
               'XXVIII' => 28,
               'XXXI' => 31,
               'XXXVI' => 36,
               'XXXIX' => 39,
               'XL' => 40,
               'XLII' => 42,
               'XLV' => 45,
               'XLVIII' => 48,
               'XLIX' => 49,
               'L' => 50,
               'LI' => 51,
               'LV' => 55,
               'LIX' => 59,
               'LX' => 60,
               'LXI' => 61,
               'LXV' => 65,
               'LXIX' => 69,
               'LXX' => 70,
               'LXXI' => 71,
               'LXXV' => 75,
               'LXXIX' => 79,
               'LXXX' => 80,
               'LXXXI' => 81,
               'LXXXV' => 85,
               'LXXXIX' => 89,
               'XC' => 90,
               'XCI' => 91,
               'XCV' => 95,
               'XCIX' => 99,
               'C' => 100,
               'CI' => 101,
               'CIX' => 109,
               'CXI' => 111,
               'CXIX' => 119,
               'CXXXVIII' => 138,
               'CXLIX' => 149,
               'CL' => 150,
               'CLXIII' => 163,
               'CC' => 200,
               'CD' => 400,
               'D' => 500,
               'CMXCVIII' => 998,
               'M' => 1000,
               'MMX' => 2010,
               'MMXIII' => 2013
             }

  context "from one to over two thousand" do

    examples.each do |numeral, integer|
      it "converts #{integer} into #{numeral}" do
        @numerals.convert(integer).should == numeral
      end
    end

    examples.each do |numeral, integer|
      it "reverts #{numeral} into #{integer}" do
        @numerals.revert(numeral).should == integer
      end
    end
  end
end
