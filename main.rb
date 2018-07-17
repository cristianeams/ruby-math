require './players'
require './questions'

# Gets player's names 
print "Please enter player 1's name"
player1_name = gets.chomp
print "Please enter player 2's name"
player2_name = gets.chomp

# Creates instances of players

player1 = Player.new(player1_name)
player2 = Player.new(player2_name) 
