class Game

  def initialize
    @board = [ [nil, nil, nil],[nil, nil, nil],[nil, nil, nil] ]
    @pieces = [:o, :x]
    @turn = 0
  end

  def place_piece(row, column)
    if @board[ row ][ column ]
      puts "Already occupies, cannot play there"
      return
    end
    @board[ row ][ column ] = @pieces[ @turn % 2 ]
    @turn = @turn + 1
  end

  def display_board
    row_strings = @board.map do |row|
      row_to_string(row)
    end
    row_strings.join("\n______\n")
  end

  def restart
    @board = [ [nil, nil, nil],[nil, nil, nil],[nil, nil, nil] ]
    @turn = 0
  end

    private

    def row_to_string(row)
      row_symbols = row.map do |piece|
        piece || " "
      end
      row_symbols.join("|")
    end

end