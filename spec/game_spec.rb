require '../lib/game'

game = Game.new
puts "#{game} should be an instance of Game."
puts "#{game.positions} should be a hash with positions 1-9"
puts "#{game.display_board} should be an empty board."
puts "#{game.choice("2", "Player 1")} should be a board where the upper middle is X."
puts "#{game.display_board} should be an empty board."
puts "#{game.over} should be false"
puts "#{game.winner_name} should be nil"
game.over?
puts "#{game.over} should be false"


puts "#{game.winner?("Player 1")} should be false"
game.choice("1", "Player 1")
game.choice("2", "Player 1")
game.choice("3", "Player 1")
puts "#{game.winner?("Player 1")} should be true"
puts "#{game.winner_name} should be Player 1"


game.over?
puts "#{game.over} should be true"
