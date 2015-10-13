class Knight < Piece

  def valid_move?(x, y)
    # Knight has no concern for obstruction, only check required is valid move of spaces.
    return true if (self.x_position - x).abs == 2 && (self.y_position - y).abs == 1
    return true if (self.x_position - x).abs == 1 && (self.y_position - y).abs == 2
    return false
  end
  
end
