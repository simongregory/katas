require "enumerator"

class BowlingGame
  def initialize
    @scores = []
  end

  def roll(pins)
    @scores << pins
    @scores << 0 if pins == 10
  end

  def score
    total = 0
    spare = false
    strike = false

    @scores.each_slice(2) do |frame|
      frame_total = frame.inject(0, :+)

      total += frame_total
      total += frame[0] if spare
      total += frame[1] if strike

      spare = (frame_total == 10)
      strike = (frame[0] == 10)
    end

    total
  end
end
