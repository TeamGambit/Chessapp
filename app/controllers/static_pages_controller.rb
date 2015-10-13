class StaticPagesController < ApplicationController
  def index
    @games = Game.open
  end
end
