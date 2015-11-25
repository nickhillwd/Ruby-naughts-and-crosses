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

  def row_to_string(row)
    row_symbols = row.map do |piece|
      piece || " "
    end
    row_symbols.join("|")
  end

  def display_board
    rows_as_string = @board.map do |row|
      row_to_string(row)
    end
    rows_as_string.join("\n______\n")
  end

end