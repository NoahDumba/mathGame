class Player
  attr_accessor :lives
  attr_reader :name

  def initialize(lives, name)
    @lives = lives
    @name = name
  end
end