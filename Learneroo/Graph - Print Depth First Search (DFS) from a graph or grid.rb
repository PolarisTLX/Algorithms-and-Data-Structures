https://www.learneroo.com/modules/32/nodes/408

Challenge
Create a graph of input and print it out in DFS order.


def do_stuff(grid, i=0, visited=[])
	print i, " "
	visited << i
	# return if i == 4
	grid[i].each do |n|
		do_stuff(grid, n, visited) unless visited.include?(n)
	end
end

#boilerplate code
t = gets.to_i
for c in 1..t do
	m = gets.to_i
	grid = []
	(0...m).each do |r|
		grid[r] = gets.strip.split.map {|i| i.to_i}
	end
	do_stuff(grid, 0)
	print "\n"
end
