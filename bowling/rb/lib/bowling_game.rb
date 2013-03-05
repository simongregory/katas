require "enumerator"

class BowlingGame
  def initialize
    @scores = []
  end

  def roll(pins)
    @scores << pins
  end

  def score
    total = 0
    i = 0

    while i < 10

      current = @scores[i] || 0
      following = @scores[i+1] || 0
      third = @scores[i+2] || 0

      if current == 10 #strike
        total += current + following + third
      elsif current + following == 10 #spare
        total += current + following + third
        i += 1
      else
        total += current + following
      end

      i += 1
    end

    total
  end
end
