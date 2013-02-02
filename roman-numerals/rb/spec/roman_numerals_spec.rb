require 'rspec'
require 'roman_numerals'

describe RomanNumerals do

  before do
    @numerals = RomanNumerals.new
  end

  after do
    @numerals = nil
  end

  describe "turning integers into roman numerals" do

    it "converts 1 into I" do
      @numerals.convert(1).should == 'I'
    end

    it "converts 3 into III" do
      @numerals.convert(3).should == 'III'
    end

    it "converts 4 into IV" do
      @numerals.convert(4).should == 'IV'
    end
  end
end
