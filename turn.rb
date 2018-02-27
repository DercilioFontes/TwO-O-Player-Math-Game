# At the end of every turn, the game should output the new scores for both players, so players know where they stand.

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

require './question'
require './player'

class Turn
  attr_accessor :question, :player
  
  def initialize(player)
    @question = Question.new
    @player = player
  end

  # Print the question (get from the Question and the answer) and the player that get form the game
  def play
    puts ""
    puts "----- NEW TURN -----"
    print "#{self.player.name}: #{self.question.ask}\n> "
    attempt = gets.chomp.to_i
    if self.question.test_answer(attempt) # Convert to interger
      puts "#{self.player.name}: YES! You are correct"
      self.player.count_lives( win = true )
    else
      puts "#{self.player.name}: Seriously? No!"
      self.player.count_lives( win = false )
    end
    
  end

end

# t1 = Turn.new("Player 1")

# p t1
# p t1.play