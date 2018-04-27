https://www.learneroo.com/modules/100/nodes/495

def do_stuff(grid, i=0)
	#your code here
	highest = 0
	grid.each do |row|
		row.each do |n|
			highest = n if n > highest
		end
    end
    print highest
end


def area_size(grid, row, col)

    area1

    grid.each do |temp_row|
		temp_row.each do |temp_col|
			highest_neighbor(temp_row, temp_col)
			area1 += 1 if highest_neighbor == where we came from
		end
    end

    return area1

end

def highest_neighbor(grid, row, col)

	# rows = i, columns = j
	# make sure that:
		# i & j >= 0  &&
		## i < rows.length (grid.length)
		## (below will actually be the same as above due to square grid)
		## j < columns.length (grid[i].length)
		# SO  i & j  <  square_size  which is grid.length

	#push each side into an array to call .max on it:
	neighbors = []

	# row and col values start off as current value's location
	#row = 1
	#col = 1
	# example Grid[1][1] (value of 6)
	#check column immediately above
	#row = -1, column = same
	neighbors << grid[row-1][col] if (row-1).between?(0, grid.length-1)

	#check on same row at either side
	#row = same, column = -1 & +1
	neighbors << grid[row][col-1] if (col-1).between?(0, grid.length-1)
	neighbors << grid[row][col+1] if (col+1).between?(0, grid.length-1)

	#check coloumn immiediately below
	#row = +1, column = same
	neighbors << grid[row+1][col] if (row+1).between?(0, grid.length-1)

	return neighbors.max

end

#boilerplate code
t = gets.to_i
for c in 1..t do
	m = gets.to_i
	grid = []
	(0...m).each do |r|
		grid[r] = gets.strip.split.map {|i| i.to_i}
	end
	# call starting function below (to replace do_stuff):
	do_stuff(grid)
	print "\n"
end
