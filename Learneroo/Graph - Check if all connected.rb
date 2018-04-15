https://www.learneroo.com/modules/100/nodes/509
Are all the components connected on the given Graph?

def do_stuff(grid, i=0, visited=[])
	# print i, " "
	visited << i

	grid[i].each do |n|
		do_stuff(grid, n, visited) unless visited.include?(n)
	end

	return grid.length == visited.length ? true : false
end


t = gets.to_i
for c in 1..t do
	m = gets.to_i
	grid = []
	(0...m).each do |r|
		grid[r] = gets.strip.split.map {|i| i.to_i}
	end
	print do_stuff(grid, 0)
	print "\n"
end





Input	(in 1st test case:
   graph[0] connects to 2,
   graph[5] connects to 4,2 & 3)

2
4
0 5 3
5 2
5 1
4 2 3

Correct Output
true


1 2
0 2
0 1 3 4 5
2 4
3 2
2

Correct Output
true


1
0 3 4
5 6
1
1
2
2

Correct Output
false
