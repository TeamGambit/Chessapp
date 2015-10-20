require 'test_helper'

class PieceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

	test "no obstruction for upperRight and lowerLeft" do
		game = Game.create

		white_queen = game.pieces.find_by(color: 0, type: 'Queen')
		white_queen.update(y_position: 2)

		# 2 squares to upperRight
		actual = white_queen.is_obstructed?(1, 4)
		assert_equal false, actual

		# Update the queen's position so lowerRight path is clear
		white_queen.update(y_position: 5)

		# 2 squares to lowerLeft
		actual = white_queen.is_obstructed?(5, 3)
		assert_equal false, actual
	end

	test "obstructed for upperRight and lowerLeft" do
		game = Game.create
		white_queen = game.pieces.find_by(color: 0, type: 'Queen')

		# 2 squares to upperRight
		actual = white_queen.is_obstructed?(5, 2)
		assert_equal true, actual

		# Update the queen's position so lowerLeft path is clear
		white_queen.update(y_position: 3)

		# Move a pawn to make an obstacle
		blocking_pawn = game.pieces.find_by(x_position: 2, y_position: 1)
		blocking_pawn.update(y_position: 2)

		# 2 squares to lowerLeft
		actual = white_queen.is_obstructed?(1, 1)
		assert_equal true, actual
	end

end
