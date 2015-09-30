class Piece < ActiveRecord::Base
  belongs_to :game
  belongs_to :player
  enum color: [:white, :black]

  def self.types
    %w(Pawn Rook Knight Bishop Queen King)
  end

  def is_obstructed?(to_x,to_y)
    obstruction_array = obstructed_squares(to_x, to_y)

    return false if obstruction_array.empty?

    obstruction_array.each do |square|
      # return true if we find an obstruction
      # return true if game.obstruction(square[0], square[1])
      return true if obstruction?(square[0], square[1])
    end

    # default to false
    false
  end

  # this method collects an array of squares where an obstruction could occur
  # the checks each of those squares for any obstructing piece
  def obstructed_squares(x, y)
    fail NotImplementedError 'Pieces must implement #obstructed_squares'
  end

end
