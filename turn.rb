class Turn
  attr_reader :question
  attr_reader :player

  def initialize(current_player, question)
    @player = current_player
    @question = question
  end
end