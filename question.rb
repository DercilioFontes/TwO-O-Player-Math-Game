# new math question is generated for each turn by picking 2 numbers between 1 and 20

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
# Good bye

class Question
  attr_accessor :n1, :n2

  def initialize
    @n1 = rand(19) + 1
    @n2 = rand(19) + 1
  end

  def ask
    "What does #{self.n1} plus #{self.n2} equal?"
  end

  def test_answer(attempt)
    attempt == self.n1 + self.n2
  end

end

# q1 = Question.new

# puts q1.question
# puts q1.test_answer(20)