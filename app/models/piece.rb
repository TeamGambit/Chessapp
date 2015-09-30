class Piece < ActiveRecord::Base
  belongs_to :game
  belongs_to :player
  enum color: [:white, :black]

  
  def self.types
    %w(Pawn Rook Knight Bishop Queen King)
  end
end
