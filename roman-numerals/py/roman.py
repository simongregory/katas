class RomanNumeral():

    def convert(self, arabic):
        units    = [1000, 900, 500, 400,  100,  90,   50,   40,  10,    9,  5,    4,    1]
        numerals = ['M', 'CM', 'D', 'CD', 'C', 'XC', 'L', 'XL', 'X', 'IX', 'V', 'IV', 'I']
        roman = ''

        for size, numeral in zip(units, numerals):
            while arabic >= size:
                roman += numeral
                arabic -= size

        return roman
