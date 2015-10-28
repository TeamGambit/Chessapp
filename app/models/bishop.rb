class Bishop < Piece
	def valid_move?(x,y)
		# check for diagonal move
		return false unless (x_position - x).abs == (y_position - y).abs

		is_obstructed?(x,y) ? false : true
	end
end
