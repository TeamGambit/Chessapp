class GamesController < ApplicationController

  def new
  end

  def create
  end

  def show
      chessboard=[]
        8.times.each do |i|
          chessboard[i]=[]
            8.times.each do |j|
              chessboard[i][j]=nil
            end
        end
      @chessboard=chessboard

      @game=Game.find(1)

      pieces=@game.pieces

      pieces.each do |piece|
      chessboard[piece.y_position][piece.x_position]= piece
      end

  end


end
