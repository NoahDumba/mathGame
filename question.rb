class Question
  attr_reader :question
  attr_reader :answer

  def initialize(q, a)
    @question = q
    @answer = a
  end

  def correct_answer?(ans)
    if answer == ans.to_i
      true
    else
      false
    end
  end
end