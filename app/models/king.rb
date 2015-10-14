class King < Piece
    def valid_move?(x, y)
    # King can move one square at a time in any direction. Move not valid if current position - new position
    # is greater than the absolute value of 1. 
    return false if (delta_x).abs > 1 || (delta_y).abs > 1

    # Check for obstructions between current position and new position
    if is_obstructed?(dest_x,dest_y)
      return false 
    else
      return true
    end
  end
end

