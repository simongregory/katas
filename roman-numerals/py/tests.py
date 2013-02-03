import unittest
import roman

from roman import RomanNumeral

"""Unit tests"""

class RomanNumeralConverter(unittest.TestCase):

    def test_conversion_of_one(self):
        """Verify 1 is converted to I."""
        r = RomanNumeral()

        self.assertEqual(r.convert(1), 'I')
        self.assertEqual(r.convert(2), 'II')
        self.assertEqual(r.convert(3), 'III')
        self.assertEqual(r.convert(4), 'IV')
        self.assertEqual(r.convert(5), 'V')
        self.assertEqual(r.convert(9), 'IX')
        self.assertEqual(r.convert(10), 'X')

if __name__ == '__main__':
    unittest.main()
