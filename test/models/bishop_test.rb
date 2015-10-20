require 'test_helper'

class BishopTest < ActiveSupport::TestCase
	test "valid diagonal move" do
		game = Game.create
		bishop = game.pieces.find_by(color: 0, type: 'Bishop')

		# set position for no obstruction
		bishop.update(x_position: 3, y_position: 3)

		# move upper right
		actual = bishop.valid_move?(4, 4)
		assert_equal true, actual

		# move upper left
		actual = bishop.valid_move?(2, 4)
		assert_equal true, actual

		# move lower left
		actual = bishop.valid_move?(2, 2)
		assert_equal true, actual

		# move lower right
		actual = bishop.valid_move?(2, 4)
		assert_equal true, actual
	end

	test "invalid diagonal move" do
		game = Game.create
		bishop = game.pieces.find_by(color: 0, type: 'Bishop')

		# set position for no obstruction
		bishop.update(x_position: 3, y_position: 3)

		# move up
		actual = bishop.valid_move?(3, 4)
		assert_equal false, actual

		# move down
		actual = bishop.valid_move?(3, 2)
		assert_equal false, actual

		# move left
		actual = bishop.valid_move?(2, 3)
		assert_equal false, actual

		# move right
		actual = bishop.valid_move?(4, 3)
		assert_equal false, actual
	end

end
