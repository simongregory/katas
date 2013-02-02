require 'rspec'
require 'bowling_game'

describe BowlingGame do

  before do
    @bowling_game = BowlingGame.new
  end

  after do
    @bowling_game = nil
  end

  describe "score" do

    it "totals 0 when all bowls hit the gutter" do
      20.times { @bowling_game.roll(0) }
      @bowling_game.score.should == 0
    end

    it "totals 20 when all bowls take a pin down" do
      20.times { @bowling_game.roll(1) }
      @bowling_game.score.should == 20
    end

    it "totals 14 when one spare frame is bowled" do
      @bowling_game.roll(5)
      @bowling_game.roll(5)
      @bowling_game.roll(2)
      17.times { @bowling_game.roll(0)}

      @bowling_game.score.should == 14
    end

    it "totals 30 when a strike is bowled" do
      @bowling_game.roll(10)
      @bowling_game.roll(5)
      @bowling_game.roll(5)
      16.times { @bowling_game.roll(0)}

      @bowling_game.score.should == 30
    end

  end
end
