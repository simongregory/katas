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
    spare = false

    @scores.each_slice(2) do |frame|
      frame_total = frame.inject(0, :+)

      total += frame_total
      total += frame[0] if spare

      spare = (frame_total == 10)
    end

    total
  end
end
