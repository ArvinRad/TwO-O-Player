require './Players_Module'

class Game

  attr_reader :lives_status, :players, :current_player

  def initialize (p1, p2)
    @players = [p1, p2]
    @current_player = @players[0]
  end

  def lives_status
    puts "Lives Remaining ==> P1: #{@players[0].lives}/3  P2:#{@players[1].lives}/3"
  end

  def change_turn
    if @current_player == @players[0]
      @current_player = @players[1]
    else
      @current_player = @players[0]
    end
  end

end