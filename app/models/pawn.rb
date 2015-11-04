class Pawn < Piece
  def valid_move?(x,y)
    return false if backwards_move?(y)
    return false if horizontal_move?(x)  
  end

  def first_move?(y)
    (white? && y_position == 1) || (black? && y_position == 6)
  end

  def horizontal_move?(x)
    dest_x = (x_position - x).abs
    dest_x != 0
  end

  def backwards_move?(y)
    color ? y_position > y : y_position < y
  end
end

