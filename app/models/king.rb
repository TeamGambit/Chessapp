class King < Piece
    def valid_move?(x, y)
    # King can move one square at a time in any direction. Move not valid if origin position - desination position
    # is greater than the absolute value of 1. 
    return false if (self.x_position - x).abs > 1 || (self.y_position - y).abs > 1

    # Check for obstructions between origin position and destination position
    if is_obstructed?(dest_x,dest_y)
      return false 
    else
      return true
    end
  end
end

