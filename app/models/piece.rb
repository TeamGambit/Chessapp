class Piece < ActiveRecord::Base
  belongs_to :game

  enum color: [:white, :black]
end
