class Question
  attr_accessor :question
  attr_accessor :answer

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