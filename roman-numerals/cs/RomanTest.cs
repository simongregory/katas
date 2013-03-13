using System;
using NUnit.Framework;
using NUnit.Framework.Constraints;

[TestFixture()]
public class RomanTest
{
    private Roman roman = null;

    [SetUp]
    public void SetUp ()
    {
        roman = new Roman ();
    }

    [TearDown]
    public void TearDown ()
    {
        roman = null;
    }

    [Test]
    public void ConvertsRomanNumeralsToArabicNumbers ()
    {
        Assert.AreEqual(1, roman.Convert("I"));
        Assert.AreEqual(2, roman.Convert("II"));
    }
}
