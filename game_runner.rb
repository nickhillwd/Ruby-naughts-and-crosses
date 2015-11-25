require('pry-byebug')
require_relative('game.rb')

#create game
game = Game.new()

#place piece
game.place_piece(0,0)

#display board
puts game.display_board

#test display row
puts "test row #{game.row_to_string([:o,nil,nil])}"


#binding.pry;''
















