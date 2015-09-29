gclass Game < ActiveRecord::Base
  has_many :pieces

  enum state: [:in_progress, :complete]

  after_create :populate_board!

def populate_board!
    #White Pawns
    (0..7).each do |i|
      Pawn.create(
        x: i,
        y_position: 1,
        #enum color
        color: [:white]
        )
    end

    #White Pieces
    Rook.create(x: 0, y: 0, color: [:white])
    Rook.create(x: 7, y: 0, color: true)

    Knight.create(x: 1, y: 0, color: [:white])
    Knight.create(x: 6, y: 0, color: [:white])

    Bishop.create(x: 2, y: 0, color: [:white])
    Bishop.create(x: 5, y: 0, color: [:white])

    Queen.create(x: 3, y: 0, color: [:white])
    King.create(x: 4, y: 0, color: [:white])

    # Black Pawns
    (0..7).each do |i|
      Pawn.create(
        x_position: i,
        y_position: 6,
        #enum color
        color: [:black]
        )
    end

    #Black Pieces
    Rook.create(x: 0, y: 7, color: [:black])
    Rook.create(x: 7, y: 7, color: [:black])

    Knight.create(x: 1, y: 7, color: [:black])
    Knight.create(x: 6, y: 7, color: [:black])

    Bishop.create(x: 2, y: 7, color: [:black])
    Bishop.create(x: 5, y: 7, color: [:black])

    Queen.create(x: 3, y: 7, color: [:black])
    King.create(x: 4, y: 7, color: [:black])
  end