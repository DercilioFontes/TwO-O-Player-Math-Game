# The player must answer correctly or lose a life.

class Player
  attr_accessor :name, :lives, :turn

  def initialize(name)
    @name = name
    @lives = 3
    @turn = true
  end

  # Take a turn and change turn. If lost (!win), loses a life. 
  def count_lives(win)
    if !win
      self.lives -= 1
    end
  end

end

# p1 = Player.new

# puts p1.lives
# puts p1.turn
# puts p1.take_turn(true)
# puts p1.turn
# puts p1.lives
# puts p1.take_turn(false)
# puts p1.lives