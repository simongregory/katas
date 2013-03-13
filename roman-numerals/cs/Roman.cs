using System;
using System.Collections.Generic;

public class Roman
{
    Dictionary<string, int> numerals;

    public Roman ()
    {
        numerals = new Dictionary<string, int>();
        numerals.Add("I", 1);
        numerals.Add("II", 2);
        numerals.Add("III", 3);
        numerals.Add("IV", 4);
    }

    public int Convert(string numeral)
    {
        return numerals[numeral];
    }
}