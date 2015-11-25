require('pry-byebug')
require_relative('game.rb')

#create game
game = Game.new()

#place piece
#game.place_piece(0,0)

#display board
puts game.display_board

#test display row
#puts "test row #{game.row_to_string([:o,nil,nil])}"
#removed so it cannot be called from outside the function - moved to private

#flip/restart the board

#game.restart

#fix extra array length

#rotate players/starting piece when setting

#once board is full auto reset and tell user it's a draw

#lunch

#auto detect is played has won 3 in a row

piece = :o
puts "Checking if game has won #{game.has_won?(piece)}. expect to be true"

game.place_piece(0,0)
game.place_piece(1,0)
game.place_piece(0,1)
game.place_piece(1,1)
puts "-------------------------------------------------------"
puts "\n"
game.place_piece(0,2)

puts "Checking if game has won #{game.has_won?(piece)}. expect to be true"

game.restart

piece = :x
puts "Checking if game has won #{game.has_won?(piece)}. expect to be false"

game.place_piece(0,0)
game.place_piece(0,1)
game.place_piece(1,0)
game.place_piece(0,2)
puts "-------------------------------------------------------"
puts "\n"
game.place_piece(2,0)

puts "Checking if game has won #{game.has_won?(piece)}. expect to be true"

# game.restart

# game.place_piece(0,0)
# game.place_piece(0,1)
# game.place_piece(1,1)
# game.place_piece(0,2)
# puts "-------------------------------------------------------"
# puts "\n"
# game.place_piece(2,2)

# puts "Checking if game has won #{game.has_won?(piece)}. expect to be true"


binding.pry;''

