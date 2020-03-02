class Turn
  puts '----- NEW TURN -----'
  attr_reader :question
  attr_reader :current_player

  def initialize(current_player, question)
    @current_player = current_player
    @question = question
  end
end