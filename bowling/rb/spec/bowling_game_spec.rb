require 'rspec'
require 'bowling_game'

describe BowlingGame do

  describe "score" do

    it "scores 0 when all bowls hit the gutter" do
      bowling_game = BowlingGame.new
      bowling_game.score.should == 0
    end

  end
end
