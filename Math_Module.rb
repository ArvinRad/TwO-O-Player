## This is the Math_Class managing the Math questions, checking answers and setting answer-status

class Math_Questions
  attr_accessor :answer
  def initialize()
    @answer = 0
  end

  def generate_questions
    first_number = rand(1...20)
    second_number = rand(1...20)
    @answer = first_number + second_number
    "What does #{first_number} plus #{second_number} equal?"
  end
end