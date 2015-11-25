class Game

  def initialize
    @board = [ [nil, nil, nil],[nil, nil, nil],[nil, nil, nil] ]
    @pieces = [:o, :x]
    @turn = 0
  end

  def place_piece(row, column)
    if out_of_range?(row, column)
      puts "No silly, play in the board"
      puts self.display_board
      return
    end
    if @board[ row ][ column ]
      puts "Already occupies, cannot play there"
      puts self.display_board
      return
    end
    @board[ row ][ column ] = @pieces[ @turn % 2 ]
    @turn = @turn + 1
    puts self.display_board

    if full_board?
      puts "Board full, play again."
      restart
    end

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
    @pieces.rotate!
    puts self.display_board
  end


    private

    def full_board?
      @board.flatten.all?
    end

    def out_of_range?(row, column)
      row > 2 || column > 2
    end

    def row_to_string(row)
      row_symbols = row.map do |piece|
        piece || " "
      end
      row_symbols.join("|")
    end

end