class Queen < Piece

  def valid_move?(x,y)
    #Check obstruction
    is_obstructed?(x,y) ? false : true
    # Can  move in horizonal and vertical directions
        return false unless
          #Vertical Move
          (x = self.x_position && y != self.y_position)
          #Horizontal Move
          ||
          (x != self.x_position && y = self.y_position)
          #Can also move diagonally
          ||
          (x_position - x).abs == (y_position - y).abs
        end
  end

end
