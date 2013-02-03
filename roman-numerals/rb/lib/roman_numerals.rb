class RomanNumerals

  ARABIC   = [1000, 900, 500, 400,  100,  90,   50,   40,  10,    9,  5,    4,    1]
  NUMERALS = ['M', 'CM', 'D', 'CD', 'C', 'XC', 'L', 'XL', 'X', 'IX', 'V', 'IV', 'I']

  def convert(number)
    numeral = ''

    ARABIC.zip(NUMERALS).each do |arabic, symbol|
      while number >= arabic
        numeral << symbol
        number -= arabic
      end
    end

    numeral
  end

  def revert(numeral)
    number = 0
    rgx  = /(#{NUMERALS.join('|')})/

    numeral.split(rgx).each do |symbol|
      number += find_arabic_for(symbol)
    end

    number
  end

  private

  def find_arabic_for(numeral)
    NUMERALS.each_index { |i|
      return ARABIC[i] if NUMERALS[i] == numeral
    }
    0
  end
end
