# Bowling Game Kata

From the [original](http://butunclebob.com/ArticleS.UncleBob.TheBowlingGameKata)

## Rules

The game consists of 10 frames. In each frame the player has two opportunities to knock down 10 pins. The score for the frame is the total number of pins knocked down, plus bonuses for strikes and spares.

A spare is when the player knocks down all 10 pins in two tries. The bonus for that frame is the number of pins knocked down by the next roll. So in frame 3 above, the score is 10 (the total number knocked down) plus a bonus of 5 (the number of pins knocked down on the next roll.)

A strike is when the player knocks down all 10 pins on his first try. The bonus for that frame is the value of the next two balls rolled.

In the tenth frame a player who rolls a spare or strike is allowed to roll the extra balls to complete the frame. However no more than three balls can be rolled in tenth frame.

## Requirements

Write a class named "Game" that has two methods

  roll(pins) is called each time the player rolls a ball. The argument is the number of pins knocked down.
  score()    is called only at the very end of the game. It returns the total score for that game.

## Steps

The original kata outlines the steps to take. This reduces the ambiguity that leaks from the rules and requirements. For me how you go about deducing these steps is just as important as the code you write. So decide if you want to read any further, if not return once you're done and compare.

1. Boilerplate the project
2. All bowls hit the gutter
3. All bowls take down one pin
4. Spare one of the frames
5. Strike one of the frames
