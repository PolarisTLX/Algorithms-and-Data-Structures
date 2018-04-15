https://www.learneroo.com/modules/100/nodes/510

Print true if the graph has a cycle and false otherwise.


Not sure why this one works entirely:


def do_stuff(graph, i=0, previous=nil, visited=[])
	visited << i

	cycle = false

	graph[i].each do |n|
		next if n == previous
		if visited.include?(n)
			cycle = true
		else
			return true if do_stuff(graph, n, i, visited)
		end
	end
	return cycle
end


#boilerplate code
t = gets.to_i
for c in 1..t do
	m = gets.to_i
	grid = []
	(0...m).each do |r|
		grid[r] = gets.strip.split.map {|i| i.to_i}
	end
	print do_stuff(grid)
	print "\n"
end
