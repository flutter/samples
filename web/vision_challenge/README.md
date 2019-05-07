A fun game to test your color perception abilities.

Contributed as part of the Flutter Create 5K challenge by Yukkei Choi.

## How to play

Tap the unique color block as fast as possible.

## Features

1. Each round when user taps the unique color block, score will be increased by one.
2. Timer: 30 seconds countdown.
3. Color difference will be stepwise reduced when user reached a higher score.
4. If it is difficult to distinguish the unique color block, user can "SHAKE" the device to shift to another theme color, while the position of the unique color block still keep the same.
5. Provide a restart button at the end, user can infinitely play again without relaunching the app.
6. After each replay, game board's theme color will be different from the previous play.
7. Give user a grade based on the final score:

| score range | grade |
|-------------|-------|
| 0 - 9       |  Fail |
| 10 - 19     |   D   |
| 20 - 29     |   C   |
| 30 - 34     |   B   |
| 35 - 39     |   B+  |
| 40 - 44     |   A   |
| 45 or above |   A+  |

## Graphics

1. I created all graphics used on the app by using Photoshop.
2. Flutter is great and now I'm able to demonstrate my artwork on the app into practice.

## Techniques used

1. Use stateful widget to run the timer countdown animation.
2. Since only 5kb is allowed, the grade is calculated by using math, instead of writing if-else statement.
3. Use redux to store the game states:

| state | description                                              | data type         |
|-------|----------------------------------------------------------|-------------------|
| score | Store the player score                                   | int               |
| board | Locate the position of unique color block                | [[int],[int],...] |
| count | Count the no. of replay, for switching the theme color   | int               |
| page  | Current page / game status                               | int               |

| page | description                                                    |
|------|----------------------------------------------------------------|
|  -1  | First launch the app, show the welcome screen with instruction |
|   0  | Game in progress                                               |
|   1  | Game end, show result                                          |

## Limitation

Limited to portrait view.
