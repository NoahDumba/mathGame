require './player'
require './question'
require './turn'

# class player
#   - tracks and modifies lives

# class question
#   - tracks question and correct response

# class turn
#   - tracks current player and current question

# main.rb will run the game using these classes

pOne = Player.new(3, 'Player 1')
pTwo = Player.new(3, 'Player 2')
puts 'Let the game begin!'

currentTurn = nil

while(pOne.lives > 0 && pTwo.lives > 0)
  puts '----- NEW TURN -----'

  if currentTurn
    if currentTurn.player == pOne
      currentTurn = Turn.new(pTwo, Question.new())
      otherPlayer = pOne
    else
      currentTurn = Turn.new(pOne, Question.new())
      otherPlayer = pTwo
    end
  else
    currentTurn = Turn.new(pOne, Question.new())
  end

  puts "#{currentTurn.player.name}: #{currentTurn.question.question}"

  if currentTurn.question.answer == gets.chomp.to_i
    puts "#{currentTurn.player.name}: Correct!"
  else
    puts "#{currentTurn.player.name}: What? INCORRECT!"
    currentTurn.player.lives = currentTurn.player.lives - 1
  end

  if pOne.lives == 0 || pTwo.lives == 0
    puts "#{otherPlayer.name} wins with a score of #{otherPlayer.lives}/3!"
    puts '----- GAME OVER -----'
  else
    puts "P1: #{pOne.lives}/3 vs P2: #{pTwo.lives}/3"
  end
end