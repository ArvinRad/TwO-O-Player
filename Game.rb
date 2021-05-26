require './Players_Module'

class Game

  attr_reader :lives_status, :players, :current_player

  def initialize (p1, p2)
    @players = [p1, p2]
    @current_player = @players[0]
  end

  def lives_status
    puts "Lives Remaining ==> #{@players[0].name}: #{@players[0].lives}/3 vs #{@players[1].name}:#{@players[1].lives}/3"
  end

  def final_status
    puts "Player #{@current_player.name} wins with a score of #{@current_player.lives}/3"
    puts "-----------GAME OVER------------"
    puts "Good bye!"
  end

  def change_turn
    if @current_player == @players[0]
      @current_player = @players[1]
    else
      @current_player = @players[0]
    end
  end

end