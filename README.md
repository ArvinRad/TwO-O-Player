### TwO-O-Player

## Description
Create a 2-Player math game where players take turns to answer simple math addition problems. A new math question is generated for each turn by picking two numbers between 1 and 20. The player whose turn it is is prompted the question and must answer correctly or lose a life.

## Details
Both players start with 3 lives. They lose a life if they mis-answer a question. At the end of every turn, the game should output the new scores for both players, so players know where they stand.

The game doesn’t end until one of the players loses all their lives. At this point, the game should announce who won and what the other player’s score is.

## Task 1: Extract Nouns for Classes

Noun(Classes): Game, Players (1 & 2 & scores), (Math-Problems and Answers,)

## Task 2: Write their roles

# Players_class: initializes Game and Player, Set Turn, Calculate and Store lives, Destroy players after die (This class contains the game loop and manage the current_player. It has user I/O)
status: game (live, die), Players' turns(player 1, player2)turn, Answer correctness status, number of lives status
Behaviours: Takes players' info and starts the game, sets turns, receives answer correctness status from Math class and counts remaining lives, announces final results and cleans up before die.

What information is relevant to this class?
  Players_Info, Game_Rounds, Current_Lives, Answer_Status,
What will this calss needs in order to be initialized?
  Game_Start, Players_info
What public methods will be defined on them?
  None


# Math_class: initiates problem category, generates random problem and checks the asnswers  (this class has a user I/O)
Status: players' request for problem, Answer correctness status
Bahaviours: Checks player's request, Generates Math random Problems, receives answers and evaluates them, sends the correctness status to player

What information is relevant to this class?
  Players_Request, Input_Numbers, Input_Answers, Answer_Status
What will this calss needs in order to be initialized?
  Players_Request, Input_Numbers
What public methods will be defined on them?
  None

## Methods:

# Players_Class

Set(attributes): Players' name, Initial_Lives
Set(turn): Player1 and Player 2
Set(request): To Math_Class for a qiestion
Get(Answer_Status): From Math_Class
Set(Current_Lives): Depending on Answer_Status
Set(Announce): If live ends

# Math_Class

Set(attibutes): Players' name, Input Numbers
Get(Turn_Status): From Player_Class
Get(Request): From Player_Class
Puts(question): To Console
Get(Answer): from the Console
Evaluate(Answer_status)
Puts(message): To Console
Set(Answer_Status): To Player_Class






