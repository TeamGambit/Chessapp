module Obstructions

	# this method checks diagonally for queen and bishop
	def diagonal_obstruction_array(x, y)
		# store piece x & y positions in local variables
		origin_x = x_position
		origin_y = y_position

		# create return array of [ [x1,y1], [x2, y2], ... ]
		obstruction_array = []

		# check for moves that aren't diagonal
		return [] if x == origin_x
		return [] if y == origin_y

		# determine horizontal and vertical increment values
		x_increment = ( x <=> origin_x )
		y_increment = ( y <=> origin_y )

		# increment once to move off of starting square
		origin_x += x_increment
		origin_y += y_increment

		# loop through all values stopping before x, y
		while (x - origin_x).abs > 0 && (y - origin_y).abs > 0
			# push each coordinate pair to the array
			obstruction_array << [origin_x, origin_y]
			origin_x += x_increment
			origin_y += y_increment
		end
		# return array
		obstruction_array
	end

	# build horizontal and vertical arrays
	def linear_obstruction_array(x, y)
		# store current position for x and y
		origin_x = x_position
		origin_y = y_position

		# create return array of [ [x1,y1], [x2, y2], ... ]
		obstruction_array = []

		if x == origin_x     # vertical move
			# determine up or down direction
			y_increment = ( y <=> origin_y )

			# increment once to move off of starting square
			origin_y += y_increment

			# loop through all values stopping before x
			while (y - origin_y).abs > 0
				obstruction_array << [origin_x, origin_y]
				origin_y += y_increment
			end

		elsif y == origin_y     # horizontal move
			# determine left or right direction
			x_increment = ( x <=> origin_x )

			# increment once to move off of starting square
			origin_x += x_increment

			# loop through all values stopping before x
			while (x - origin_x).abs > 0
				obstruction_array << [origin_x, origin_y]
				origin_x += x_increment
			end

    end

		# return array
		obstruction_array
	end


end
