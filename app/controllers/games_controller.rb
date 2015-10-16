class GamesController < ApplicationController


  def new
    @game = Game.new


  end

  def create

  end

  def show
    @board =[
      ["test", "test", "test", "test", "test", "test", "test", "test"],

      ["test", "test", "test", "test", "test", "test", "test", "test"],

      ["test", "test", "test", "test", "test", "test", "test", "test"],

      ["test", "test", "test", "test", "test", "test", "test", "test"],

      ["test", "test", "test", "test", "test", "test", "test", "test"],

      ["test", "test", "test", "test", "test", "test", "test", "test"],

      ["test", "test", "test", "test", "test", "test", "test", "test"],

      ["test", "test", "test", "test", "test", "test", "test", "test"]
    ]
  end
end
