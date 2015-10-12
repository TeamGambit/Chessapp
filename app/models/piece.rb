class Piece < ActiveRecord::Base
  include Obstructions
  belongs_to :game
  belongs_to :player
  enum color: [:white, :black]

  def self.types
    %w(Pawn Rook Knight Bishop Queen King)
  end

  # checks database for occupied tile
  def occupied?(x, y)
    game.pieces.exists?(x_position: x, y_position: y)
  end

  def is_obstructed?(dest_x,dest_y)
    origin_x = self.x_position
    origin_y = self.y_position

    delta_x = (origin_x - dest_x).abs
    delta_y = (origin_y - dest_y).abs

    # for horizontal and vertical move
    if (origin_x == dest_x && origin_y != dest_y) || (origin_y == dest_y && origin_x != dest_x)
      obstruction_array = linear_obstruction_array(dest_x, dest_y)

    # for diagonal move
    elsif origin_x != dest_x && origin_y != dest_y && delta_x == delta_y
      obstruction_array = diagonal_obstruction_array(dest_x, dest_y)

    # in valid move
    elsif delta_x != delta_y
      raise "Illegal move"
    end

    obstruction_array.each do |tile|
      # return true if we find an obstruction
      return true if occupied?(tile[0], tile[1])
    end

    # default to false
    false
  end

end
