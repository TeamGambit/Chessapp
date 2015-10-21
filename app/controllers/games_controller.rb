class GamesController < ApplicationController

  def new
  end

  def create
  end

  def show
    @chessboard = empty_chessboard
    @game=Game.find(1)
    pieces=@game.pieces
    pieces.each do |piece|
      @chessboard[piece.y_position][piece.x_position] = piece
    end

  end
  private

  def empty_chessboard
    Array.new(8) { Array.new(8) }
  end

end
