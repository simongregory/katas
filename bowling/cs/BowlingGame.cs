public class BowlingGame
{
    private int[] scores = new int[22];
    private int step = 0;

    public BowlingGame () {}

    public void Roll (int pins)
    {
        scores[step++] = pins;
    }

    public int Score ()
    {
        int total = 0;
        int i = 0;

        int current = 0;
        int next = 0;
        int third = 0;

        while (i < 10) {

            current = scores[i];
            next = scores[i+1];
            third = scores[i+2];

            if (current == 10) { //strike
                total += current + next + third;
            }
            else if (current + next == 10) { //spare
                total += current + next + third;
                i++;
            }
            else {
                total += current + next;
            }

            i++;
        }

        return total;
    }
}
