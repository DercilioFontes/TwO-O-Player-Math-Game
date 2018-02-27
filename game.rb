# Example prompt
# Player 1: What does 5 plus 3 equal?
# > 9
# Player 1: Seriously? No!
# P1: 2/3 vs P2: 3/3
# ----- NEW TURN -----
# Player 2: What does 2 plus 6 equal?
# > 8
# Player 2: YES! You are correct.
# P1: 2/3 vs P2: 3/3
# ----- NEW TURN -----
# ... some time later ...
# Player 1 wins with a score of 1/3
# ----- GAME OVER -----
# Good bye!



# 2 players take turns to answer simple math addition problems
# The game doesn’t end until one of the players loses all their lives. At this point, the game should announce who won and what the other player’s score is.
require './player'
require './turn'

class Game
  attr_accessor :player1, :player2

  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')

  end

  # Make a match and change the turn between players
  def match
    if player1.turn
      Turn.new(self.player1).play
      self.player1.turn = false
      self.player2.turn = true
    else
      Turn.new(self.player2).play
      self.player1.turn = true
      self.player2.turn = false
    end
    self.print_game_status
    self.check_and_game
  end

  def check_and_game
    if self.player1.lives == 0 || self.player2.lives == 0
      self.finalize
    else 
      while self.player1.lives > 0 && self.player2.lives > 0
        self.match
      end
    end
  end

  def finalize
    puts ""
    if (player1.lives == 0)
      puts "Player 2 wins with a score of #{player2.lives}/3"
    end
    if (player2.lives == 0)
      puts "Player 1 wins with a score of #{player1.lives}/3"
    end
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end

  def print_game_status
    puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
  end
  
end

g1 = Game.new

g1.check_and_game