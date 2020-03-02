require './player'
# class player
#   - tracks and modifies lives

# class question
#   - tracks question and correct response

# class turn
#   - tracks current player and current question

# main.rb will run the game using these classes

playerOne = Player.new(3)
puts playerOne.lives
playerOne.lives = playerOne.lives - 1
puts playerOne.lives