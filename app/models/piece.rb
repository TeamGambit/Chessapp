class Piece < ActiveRecord::Base
  include Obstructions
  belongs_to :game
  belongs_to :player
  enum color: [:white, :black]

  def self.types
    %w{Pawn Rook Knight Bishop Queen King}
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

  def get_piece(x,y)
    return Piece.find_by(:game_id=> game.id, :x_position => x, :y_position => y, :captured => false).first
  end

  def move_to!(new_x, new_y)

      raise "Illegal move" unless valid_move?(new_x, new_y)
      #First, check to see if there is a piece in the location it’s moving to.
      if occupied?(new_x, new_y)
        piece_in_destination = get_piece(new_x, new_y)
        # Second, if there is a piece there, and it’s the opposing color, remove the piece from the board.
        if self.color != piece_in_destination.color
        # Set opposing team piece status to “captured”.
          piece_in_destination.update_attributes(:captured => true)
        #Third, if the piece is there and it’s the same color - raise an error message.
        else
          raise "Own Piece in Destination"
        end
      end
      self.update_attributes(:x_position => new_x, :y_position => new_y)

   end

end
