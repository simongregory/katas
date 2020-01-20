const ARABIC   = [1000, 900, 500, 400,  100,  90,   50,   40,  10,    9,  5,    4,    1]
const NUMERALS = ['M', 'CM', 'D', 'CD', 'C', 'XC', 'L', 'XL', 'X', 'IX', 'V', 'IV', 'I']

function convert(integer) {
  let numeral = '';

  while(integer) {
    for (let index = 0; index < ARABIC.length; index++) {
      const val = ARABIC[index];
      if (val <= integer) {
        numeral += NUMERALS[index];
        integer -= val;
        break;
      }
    }
  }

  return numeral;
}

module.exports = { convert }
