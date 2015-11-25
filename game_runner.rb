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

binding.pry;''

#fix extra array length

#rotate players/starting piece when setting

#once board is full auto reset and tell user it's a draw

#lunch

#auto detect is played has wone 3 in a row












