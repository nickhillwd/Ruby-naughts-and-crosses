class Game

  def initialize(win_checker)
    @board = [ [nil, nil, nil],[nil, nil, nil],[nil, nil, nil] ]
    @pieces = [:o, :x]
    @turn = 0
    @win_checker = win_checker
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
    puts self.display_board
  end

  def current_piece
    @pieces[ @turn % 2]
  end

  def turn(row, column)
    place_piece(row, column)
    display_board
    check_for_win
  end

  def check_for_win
    if @win_checker.has_won?(current_piece, @board)
      puts "winner is #{current_piece}"
      restart
    elsif full_board?
      puts "board full play again"
      restart
    else
      @turn = @turn +1
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