class Rook < Piece
  def valid_move?(x,y)
# Can only move in horizonal and vertical directions
  return false if (x < self.x_position || x > self.x_position) && (y < self.y_position || y > self.y_position)

# Check for obstructions between origin position and destination position
    if is_obstructed?(dest_x,dest_y)
      return false 
    else
      return true
    end
  end
end
