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

  def play
    # Print the question (get from the Question and the answer) and the player that get form the game
    puts "#{self.player}: #{self.question}"
    attempt = gets.chomp
    if self.question.test_answer(attempt)
      puts "#{self.player}: YES! You are correct"
      self.player.take_turn(true)
    else
      puts "#{self.player}: Seriously? No!"
      self.player.take_turn(false)
    end
    # Check if has more thing to do hehe and if it's working. Check if it's the best logic
  end

end