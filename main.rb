require './player'
require './question'

# class player
#   - tracks and modifies lives

# class question
#   - tracks question and correct response

# class turn
#   - tracks current player and current question

# main.rb will run the game using these classes

newQ = Question.new("1 + 2?", 3)
puts 'correct!' if newQ.correct_answer?(gets.chomp)