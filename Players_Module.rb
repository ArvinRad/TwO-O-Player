## This is the Player_Class managing the players, initial and remaining lives

class players
  attr_accessor :name, :lives

  def initialize (name, lives = 3)
    @name = name
    @lives = lives
  end

  def reduction
    @lives -= 1
    if @lives == 0
      puts "#{@name}, you lose!"
      puts "--- GAME OVER ---"
    end
  end
end