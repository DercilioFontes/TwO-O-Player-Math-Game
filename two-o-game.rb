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

class MathGame

  def initialize()
    player1 = new Player('Player1')
    player2 = new Player('Player2')
  end

  def play
    # game loop (checke current_player)
    # as long as there's still game, create a turn, run it, print results-so-far
  end

  def check_end_game
  end

  def print_game_status
  end
  
end


# At the end of every turn, the game should output the new scores for both players, so players know where they stand.
class Turn
  
  def initialize(player)
    question = new Question
    
  end

  def play
    # Print the question (get from the Question and the answer) and the player that get form the game
  end

end

