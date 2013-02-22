require './lib/game'
require './lib/player'
#require '../lib/'

game = Game.new
# board = Board.new
players = [Player.new("Player 1"), Player.new("Player 2")]

puts "Welcome to Tic-Tac-Toe"

until game.over == true
  players.each do | player |
    game.display_board
    puts "#{player.name} your turn."
    puts "Which square would you like to pick. 1-9"
    choice = gets.chomp
    game.choice(choice, player.name)
    game.winner?(player)  
    puts " "
    game.over?
  end
end


