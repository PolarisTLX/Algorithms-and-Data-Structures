CHALLENGE:
Print BFS of a grid:
https://www.learneroo.com/modules/32/nodes/409



def do_stuff(grid, i=0, visited=[], queue=[])

	queue.shift #unless queue[0].nil?  # remove the first item in the queue
	print i, " "
	visited.push(i) #unless visited.include?(i)

	grid[i].each do |n|
			queue.push(n) unless visited.include?(n) || queue.include?(n)
	end

	do_stuff(grid, queue[0], visited, queue) unless queue[0].nil?

end

#boilerplate code
t = gets.to_i
for c in 1..t do
	m = gets.to_i
	grid = []
	(0...m).each do |r|
		grid[r] = gets.strip.split.map {|i| i.to_i}
	end
	do_stuff(grid)
	print "\n"
end
