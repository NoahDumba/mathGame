class Question
  attr_reader :question
  attr_reader :answer

  def initialize()
    arg1 = rand(9) + 1
    arg2 = rand(9) + 1
    @question = "What does #{arg1} plus #{arg2} equal?"
    @answer = arg1 + arg2
  end

  def correct_answer?(ans)
    if answer == ans.to_i
      true
    else
      false
    end
  end
end