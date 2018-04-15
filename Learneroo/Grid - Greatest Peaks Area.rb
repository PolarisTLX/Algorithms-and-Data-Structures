https://www.learneroo.com/modules/100/nodes/495

Not yet working

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
