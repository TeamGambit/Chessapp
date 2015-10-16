class Bishop < Piece
	def valid_move?(x,y)
		# check for diagonal move
		return false unless (self.x_position - x).abs != (self.y_position - y).abs

		is_obstructed?(dest_x,dest_y) ? false : true
	end
end
