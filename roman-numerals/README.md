# Roman Numeral Kata

All about [Roman Numerals](http://en.wikipedia.org/wiki/Roman_numerals).  
This kata originates from the [codingdojo.org](http://codingdojo.org/cgi-bin/wiki.pl?KataRomanNumerals)  

## Rules

The Roman numerals that represent Arabic numbers are:
    
    I = 1
    V = 5
    X = 10
    L = 50
    C = 100
    D = 500
    M = 1,000

Generally they are added largest first, so MMX is 2010. However where smaller values occur before larger values they should be subtracted, so IX is 9. Note that:

 * The symbols "I", "X", "C", and "M" can be repeated three times in succession, but no more
 * "V", "L", and "D" can never be repeated.
 * "I" can be subtracted from "V" and "X" only
 * "X" can be subtracted from "L" and "C" only
 * "C" can be subtracted from "D" and "M" only
 * "V", "L", and "D" can never be subtracted
 * Only one small-value symbol may be subtracted from any large-value symbol

## Requirements

 * You should write a function to convert Arabic numbers to Roman Numerals.
   There is no need to be able to convert numbers larger than about 3000. The Romans themselves didn't tend to go any higher.

 * Write a function to convert in the other direction, ie numeral to digit
