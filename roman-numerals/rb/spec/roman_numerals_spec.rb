require 'rspec'
require 'roman_numerals'

describe RomanNumerals do

  before do
    @numerals = RomanNumerals.new
  end

  after do
    @numerals = nil
  end

  describe "converting numbers from one to ten" do

    it "takes 1 and returns I" do
      @numerals.convert(1).should == 'I'
    end
  end
end
