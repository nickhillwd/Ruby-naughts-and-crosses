require('pry-byebug')
require_relative('game.rb')
require_relative('win_checker.rb')

#create game
win_checker_1 = WinChecker.new
game = Game.new(win_checker_1)

#place piece
#game.turn(0,0)

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

#auto detect if player has won 3 in a row

#Create a new class to do the win checking using a new method

#keep a scoresheet for the number of wins for noughts and crosses

#create a computer player tomplay against

binding.pry;''

