Challenge
The input for these challenges will provide an array of numbers in the above "breadth-first" format, and use 0''s for non-nodes.

Can you print out the sum of the Left-hand side of the Tree?

Tip: A number located at position i in an array will have its left child located at the position 2i+1 in the array.


def do_stuff(ar)
	#put code here
	sum = 0
	i = 0
	while i < ar.length do
		sum += ar[i]
		i = 2*i +1
	end
	print sum
	print "\n"
end

t = gets.to_i
for i in 1..t do
		n=gets
		ar = gets.strip.split.map {|i| i.to_i}
		do_stuff(ar)
end



Input	Correct Output	Your Output
2 7 5 2 6 0 9	    11    	11
1 7 5 2 6 0 9 3 7 5 11 0 0 4 0	   13	    13
5 3 4 11 13 15 21 10 4 7 2 8 0 9 0    	29   	29
1 2 3 4 5 6 7     	7	    7
