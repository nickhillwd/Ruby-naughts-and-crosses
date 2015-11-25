class VerticalWinChecker
  
  def has_won?(symbol, board)
    vertical_line?(symbol, board)
  end

  def vertical_line?(symbol, board)
    vertical_board = board.transpose
    vertical_board.any? do |row|
      row_has_winning_line?(row, symbol)
    end
  end

  def row_has_winning_line?(row, symbol)
    row.all? do |square|
      square == symbol
    end
  end

end