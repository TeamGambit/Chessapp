class Game < ActiveRecord::Base
  has_many :pieces


  enum state: [:in_progress, :complete]

  after_create :populate_board!

  def populate_board!
    #White Pawns
    (0..7).each do |i|
      Pawn.create(
      x_position: i,
      y_position: 1,
      color: :white,
      game_id: id,
      )
    end

    #White Pieces:
    Rook.create(x_position: 0, y_position: 0, color: :white, game_id: id)
    Rook.create(x_position: 7, y_position: 0, color: :white, game_id: id)

    Knight.create(x_position: 1, y_position: 0, color: :white, game_id: id)
    Knight.create(x_position: 6, y_position: 0, color: :white, game_id: id)

    Bishop.create(x_position: 2, y_position: 0, color: :white, game_id: id)
    Bishop.create(x_position: 5, y_position: 0, color: :white, game_id: id)

    Queen.create(x_position: 3, y_position: 0, color: :white, game_id: id)
    King.create(x_position: 4, y_position: 0, color: :white, game_id: id)

    #Black Pawns
    (0..7).each do |i|
      Pawn.create(
      x_position: i,
      y_position: 6,
      color: :black,
      game_id: id,
      )
    end

    #Black Pieces
    Rook.create(x_position: 0, y_position: 7, color: :black, game_id: id)
    Rook.create(x_position: 7, y_position: 7, color: :black, game_id: id)

    Knight.create(x_position: 1, y_position: 7, color: :black, game_id: id)
    Knight.create(x_position: 6, y_position: 7, color: :black, game_id: id)

    Bishop.create(x_position: 2, y_position: 7, color: :black, game_id: id)
    Bishop.create(x_position: 5, y_position: 7, color: :black, game_id: id)

    Queen.create(x_position: 3, y_position: 7, color: :black, game_id: id)
    King.create(x_position: 4, y_position: 7, color: :black, game_id: id)
  end
end
