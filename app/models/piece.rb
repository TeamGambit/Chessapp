class Piece < ActiveRecord::Base
  belongs_to :game
  belongs_to :player
  enum color: [:white, :black]


  def self.types
    %w(Pawn Rook Knight Bishop Queen King)
  end

  def position_on_board?(x,y)
     return false if x < 0 || x > 7
     return false if y < 0 || y > 7
     return true
  end

  def piece_already_in_position?(x,y)
    x == self.x_position && y == self.y_position
  end

end
