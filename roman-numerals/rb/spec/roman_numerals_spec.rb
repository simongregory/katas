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

    it "converts 2 into II" do
      @numerals.convert(2).should == 'II'
    end
  end
end
