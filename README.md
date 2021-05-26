### TwO-O-Player

## Description
Create a 2-Player math game where players take turns to answer simple math addition problems. A new math question is generated for each turn by picking two numbers between 1 and 20. The player whose turn it is is prompted the question and must answer correctly or lose a life.

## Details
Both players start with 3 lives. They lose a life if they mis-answer a question. At the end of every turn, the game should output the new scores for both players, so players know where they stand.

The game doesn’t end until one of the players loses all their lives. At this point, the game should announce who won and what the other player’s score is.

## Task 1: Extract Nouns for Classes

Noun(Classes): Game, Players (1 & 2 & scores), (Math-Problems and Answers,)

## Task 2: Write their roles

# Game: initializes Player Group, Set Turn and reports lives_status (This class contains the game loop and manage the current_player. It has user Output)
status: Players Group, Players' turns(player 1, player2)
Behaviours: Get players' info and starts the turn, Change turns, reports lives-status

What information is relevant to this class?
  Players_Info, Game_Rounds
What will this calss needs in order to be initialized?
  Players_info
What public methods will be defined on them?
  None,


# Players: Create Players, Calculate and Store lives
status: lives status
Behaviours:  receives players info and initiates them, set lives and updates it, checks if all lives lost and announce the loser and game over.

What information is relevant to this class?
  Players_Info,
What will this calss needs in order to be initialized?
  Players_info
What public methods will be defined on them?
  Reducing lives


# Math: generates random problem and the asnswer
Status: Request for Question
Bahaviours: Receives request, Generates Math random Question and gives answer

What information is relevant to this class?
  Question_Request
What will this calss needs in order to be initialized?
  Request
What public methods will be defined on them?
  None

## Methods:

# Game

Initialize the current player
Report the lives_status
Change turn

# Players

Set Players' name and Initial_Lives
Update the lives
Announce If all lives lost

# Math

Set(attibutes) for answer
Generate Math question







