using System;
using NUnit.Framework;
using NUnit.Framework.Constraints;

[TestFixture()]
public class BowlingGameTest
{
    private BowlingGame game = null;

    [SetUp]
    public void SetUp ()
    {
        game = new BowlingGame ();
    }

    [TearDown]
    public void TearDown ()
    {
        game = null;
    }

    [Test]
    public void ScoresNothingForGutterGame ()
    {
        Bowl(0, 20).Times();

        Assert.AreEqual(0, game.Score());
    }

    [Test]
    public void ScoresTwentyWhenEachRollHitsOnePin ()
    {
        Bowl(1, 20).Times();

        Assert.AreEqual(20, game.Score());
    }

    [Test]
    public void ScoresFourteenWhenOneSpareFrameIsBowled ()
    {
        Bowl(5,  2).Times();
        Bowl(2,  1).Times();
        Bowl(0, 17).Times();

        Assert.AreEqual(14, game.Score());
    }

    [Test]
    public void TotalsThirtyWhenAStrikeIsBowled ()
    {
        Bowl(10, 1).Times();
        Bowl(5,  2).Times();
        Bowl(0, 17).Times();

        Assert.AreEqual(30, game.Score());
    }

    [Test]
    public void TotalsThreeHundredForAPerfectGame ()
    {
        Bowl(10, 12).Times();

        Assert.AreEqual(300, game.Score());
    }

    private BowlingGameTest Bowl (int pins, int times)
    {
        int rolls = times;

        while (rolls > 0)
        {
            game.Roll (pins);
            rolls--;
        }

        return this;
    }

    public void Times ()
    {
        //Syntactic sugar... use with Bowl(pinsToKnockDown, numberOf).Times()
    }
}
