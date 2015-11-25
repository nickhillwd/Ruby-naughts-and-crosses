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
    puts self.display_board
  end



  def current_piece
    @pieces[ @turn % 2]
  end

  def turn(row, column)
    place_piece(row, column)
    display_board
    check_for_win
    @turn = @turn + 1
  end

  def check_for_win
    if has_won?(current_piece)
      puts "winner is #{current_piece}"
      restart
    elsif full_board?
      puts "board full play again"
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

  def has_won?(symbol)
    horizontal_line?(symbol, @board) ||
    vertical_line?(symbol) ||
    diagonal_line?(symbol)
  end

  def horizontal_line?(symbol, board)
    board.any? do |row|
      row_has_winning_line?(row, symbol)
    end
  end

  def row_has_winning_line?(row, symbol)
    row.all? do |square|
      square == symbol
    end
  end

  def vertical_line?(symbol)
    vertical_board = @board.transpose
    horizontal_line?(symbol, vertical_board)
  end

  def diagonal_line?(symbol)
    middle_piece = @board[1][1]
    return false if middle_piece != symbol
    top_left_and_bottom_right = @board[0][0]==symbol && @board [2][2]==symbol
    top_right_and_bottom_left = @board[0][2]==symbol && @board [2][0]==symbol
    top_left_and_bottom_right || top_right_and_bottom_left
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