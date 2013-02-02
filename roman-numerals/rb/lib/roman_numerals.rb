class RomanNumerals

  #I = 1, V = 5, X = 10, L = 50, C = 100, D = 500, M = 1000
  NUMBERS  = [1000, 900, 500, 400,  100,  90,   50,   40,  10,    9,  5,    4,    1]
  NUMERALS = ['M', 'CM', 'D', 'CD', 'C', 'XC', 'L', 'XL', 'X', 'IX', 'V', 'IV', 'I']

  def convert(num)
    numeral = ''

    NUMBERS.each_index { |i|
      boundary = NUMBERS[i]
      while num >= boundary
        numeral << NUMERALS[i]
        num -= boundary
      end
    }

    numeral
  end
end
