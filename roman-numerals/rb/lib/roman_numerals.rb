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

  #L = 50, C = 100, D = 500, M = 1000

  def convert(num)
    numeral = ''

    if num > 99
      numeral << 'C'
      num -= 100
    end

    if num > 89
      numeral << 'XC'
      num -= 90
    end

    if num > 49
      numeral << 'L'
      num -= 50
    end

    if num > 39
      numeral << 'XL'
      num -= 40
    end

    while num > 9
      numeral << 'X'
      num -= 10
    end

    numeral << find(num)
    numeral
  end

  private

  def find(num)
    ONE_TO_TEN.each { |k,v| return k.to_s if v == num }
    ''
  end
end