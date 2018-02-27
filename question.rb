# new math question is generated for each turn by picking 2 numbers between 1 and 20

class Question
  attr_accessor :n1, :n2

  def initialize
    @n1 = rand(19) + 1
    @n2 = rand(19) + 1
  end

  def question
    "What does #{self.n1} plus #{self.n2} equal?"
  end

  def test_answer(attempt)
    attempt == self.n1 + self.n2
  end
  
end

# q1 = Question.new

# puts q1.question
# puts q1.test_answer(20)