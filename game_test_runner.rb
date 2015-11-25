require_relative('win_checker.rb')

win_checker = WinChecker.new

empty_board = [ [nil, nil, nil],[nil, nil, nil],[nil, nil, nil] ]
symbol = :o
puts "check that empty baord does not win: expect #{win_checker.has_won?(symbol, empty_board)} is false"

horizontal_board = [ [:o, :o,:o ],[nil, nil, nil],[nil, nil, nil] ]

puts "check that horizontal baord does not win: expect #{win_checker.has_won?(symbol, horizontal_board)} is false"

vertical_board = [ [:o, nil, nil ],[:o, nil, nil],[:o, nil, nil] ]

puts "check that horizontal baord does not win: expect #{win_checker.has_won?(symbol, vertical_board)} is false"

diagonal_board = [ [:o, nil, nil ],[nil, :o, nil],[nil, nil, :o] ]

puts "check that horizontal baord does not win: expect #{win_checker.has_won?(symbol, diagonal_board)} is false"

random_board = [ [:o, :o, nil ],[nil, nil, :o],[nil, :o, nil] ]

puts "check that horizontal baord does not win: expect #{win_checker.has_won?(symbol, random_board)} is false"


# class GameTest
#   def horizontal_vertical_diagonal_test_suite
#     piece = :o
#     puts "Checking if game has won #{game.has_won?(piece)}. expect to be true"
#     puts "-------------------------------------------------------"

#     game.turn(0,0)
#     game.turn(1,0)
#     game.turn(0,1)
#     game.turn(1,1)
#     puts "\n"
#     puts "-------------------------------------------------------"
#     puts "\n"
#     game.turn(0,2)

#     puts "Checking if game has won #{game.has_won?(piece)}. expect to be true"
#     puts "-------------------------------------------------------"

#     game.restart
#     piece = :x

#     puts "Checking if game has won #{game.has_won?(piece)}. expect to be false"
#     puts "-------------------------------------------------------"

#     game.turn(0,0)
#     game.turn(0,1)
#     game.turn(1,0)
#     game.turn(0,2)
#     puts "\n"
#     puts "-------------------------------------------------------"
#     puts "\n"
#     game.turn(2,0)

#     puts "Checking if game has won #{game.has_won?(piece)}. expect to be true"
#     puts "-------------------------------------------------------"

#     game.restart
#     # piece = :o

#     puts "Checking if game has won #{game.has_won?(piece)}. expect to be false"
#     puts "-------------------------------------------------------"

#     game.turn(0,0)
#     game.turn(0,1)
#     game.turn(1,1)
#     game.turn(0,2)
#     puts "\n"
#     puts "-------------------------------------------------------"
#     puts "\n"
#     game.turn(2,2)

#     puts "Checking if game has won #{game.has_won?(piece)}. expect to be true"
#     puts "-------------------------------------------------------"
#   end

# end