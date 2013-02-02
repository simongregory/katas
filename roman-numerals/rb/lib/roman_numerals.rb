class RomanNumerals

  UNITS    = [1000, 900, 500, 400,  100,  90,   50,   40,  10,    9,  5,    4,    1]
  NUMERALS = ['M', 'CM', 'D', 'CD', 'C', 'XC', 'L', 'XL', 'X', 'IX', 'V', 'IV', 'I']

  def convert(num)
    numeral = ''

    UNITS.each_index { |i|
      boundary = UNITS[i]
      while num >= boundary
        numeral << NUMERALS[i]
        num -= boundary
      end
    }

    numeral
  end

  def revert(numeral)
    total = 0

    list = numeral.split(/(#{NUMERALS.join('|')})/)
    list.each { |e| total += find_value(e) }

    total
  end

  private

  def find_value(n)
    NUMERALS.each_index { |i|
      return UNITS[i] if NUMERALS[i] == n
    }
    0
  end
end
