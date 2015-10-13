class King < Piece
  def self.type
    where(type: 'king')
  end

  def valid_move?(x, y)
    # King can move one square at a time in any direction. Move not valid if current position - new position
    # is greater than the absolute value of 1. 
    return false if (self.x_position - x).abs > 1 || (self.y_position - y).abs > 1

    # Check for obstructions between current position and new position
    if diagonal_obstruction_array(x, y) || linear_obstruction_array(x, y)
      return false 
    else
      return true
    end
  end
end

