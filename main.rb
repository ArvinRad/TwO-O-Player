# This is the main entrypoint into the game
# It requires the other files/gems that it needs
require './Players_Module'
require './Math_Module'
require './Game'

## The main flow of Game

# set up players
puts "Welcome to fun TwO-O-Player Math Game! This game requires two players."
puts "Enter Player 1's name"
player1 = gets.chomp.to_s
puts "Enter Player 2's name"
player2 = gets.chomp.to_s

player1 = Players.new(player1)
player2 = Players.new(player2)

# set current player
game = Game.new(player1, player2)

while player1.lives > 0 && player2.lives > 0 do
  # generate question and answer
  puts "--- NEW TURN ---"
  question = Math_Questions.new
  puts "#{game.current_player.name}: #{question.generate_questions}"
  print '> '

  # prompt for answer
  input = gets.chomp.to_i

  # check answer
  answer = question.answer
  if (input != answer)
    puts "#{game.current_player.name}: Seriously? No!"
    game.current_player.reduction
  else puts "#{game.current_player.name}: Yes, you are correct!"
  end

  if player1.lives > 0 && player2.lives > 0
    game.lives_status
  end
  
  # change turn
  game.change_turn
end

# Announce final result
game.final_status
