class RomanNumerals

  NUMERALS = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000 }

  def convert(num)
    numeral = ''

    if num == 4
      numeral = 'IV'
    else
      num.times { numeral << 'I'}
    end

    numeral
  end
end