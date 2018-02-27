# The player must answer correctly or lose a life.

class Player
  attr_accessor :name, :lives, :turn

  def initialize(name)
    @name = name
    @lives = 3
    @turn = true # check!
  end

  # Take a turn and change turn. If lost (!win), loses a life. 
  def take_turn(win)
    if !win
      self.lives -= 1
    end
    self.turn = self.turn ? false : true
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