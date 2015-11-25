class Game

  def initialize
    @board = [ [nil, nil, nil],[nil, nil, nil],[nil, nil, nil] ]
    @pieces = [:o, :x]
    @turn = 0
  end

  def place_piece(row, column)
    @board[ row ][ column ] = @pieces[ @turn % 2 ]
    @turn = @turn + 1
  end

end