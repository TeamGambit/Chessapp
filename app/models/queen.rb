class Queen < Piece

  def valid_move?(x,y)
    #Check obstruction
    is_obstructed?(x,y) ? false : true
    # Can  move in horizonal and vertical directions
        return false unless
          horizontal_move?(x,y) || vertical_move?(x,y) || diagonal_move?(x,y)
        end
  end

  def horizontal_move?(x, y)
    (x != self.x_position && y == self.y_position)
  end

  def vertical_move?(x,y)
    (x == self.x_position && y != self.y_position)
  end

  def diagonal_move?(x,y)
    (x_position - x).abs == (y_position - y).abs
  end

end
