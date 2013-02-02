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

    it "scores 0 when all bowls hit the gutter" do
      20.times { @bowling_game.roll(0) }
      @bowling_game.score.should == 0
    end

    it "scores 20 when all bowls take a pin down" do
      20.times { @bowling_game.roll(1) }
      @bowling_game.score.should == 20
    end

    it "scores 14 when one spare frame is bowled" do
      @bowling_game.roll(5)
      @bowling_game.roll(5)
      @bowling_game.roll(2)
      18.times { @bowling_game.roll(0)}

      @bowling_game.score.should == 14
    end

  end
end
