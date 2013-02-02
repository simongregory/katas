class RomanNumerals

  ONE_TO_TEN = {
    :I    => 1,
    :II   => 2,
    :III  => 3,
    :IV   => 4,
    :V    => 5,
    :VI   => 6,
    :VII  => 7,
    :VIII => 8,
    :IX   => 9,
    :X    => 10 }

    OVER_TEN = {
    :L    => 50,
    :C    => 100,
    :D    => 500,
    :M    => 1000 }

  def convert(num)
    ten_count = num/10
    remainder = num%10

    tens = 'X'*ten_count
    ones = find(remainder)

    tens + ones
  end

  private

  def find(num)
    ONE_TO_TEN.each { |k,v| return k.to_s if v == num }
    ''
  end
end