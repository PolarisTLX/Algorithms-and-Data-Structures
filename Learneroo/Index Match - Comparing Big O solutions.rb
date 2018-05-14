https://www.learneroo.com/modules/101/nodes/487

Challenge

Given a sorted Array ar of integers with no duplicates, find the spot where ar[i] == i.
Print the index where they match, or -1 if there is none.

Its super-easy to find a solution in O(n) time, but can you code an O(log n) solution?




# O(n) RUN TIME SOLUTION:
def index_match(ar, index=0)
	ar.each_with_index do |x, index|
		return index if x == index
	end

	-1
end



  
# O(log n) RUN TIME SOLUTION = BINARY SEARCH:
def index_match(ar, index=0)

	mid = ar.length/2
	# this problem is a special case where the target we are looking for is not fixed / known beforehand
	# .'. we need to keep track of index and keep passing it forward
	# to account for it restarting at 0 every time we check the > side of the array
	actual_index = mid + index

	if ar[mid] == actual_index
		return actual_index
	elsif ar.length == 1
		return -1
	elsif ar[mid] < mid
		index_match(ar[(mid + 1)..-1], actual_index + 1)
		# here is where we check the > side of the array, and need to pass the index to keep track of it (or it keeps returning to 0)
	else #ar[mid] > mid
		index_match(ar[0..(mid - 1)], index)
	end
end

t = gets.to_i
for i in 1..t do
		n=gets
		ar = gets.strip.split.map {|i| i.to_i}
		puts index_match(ar)
end


Input	Correct                   Output	Your Output
0 2 3 7 9 11	                       0	0
3 5 7 9 11 13 17	                   -1	-1
-4 -2 0 2 4 6 8 10	                  4	4
1 2 3 4 5 6 7 8 9 10	               -1	-1
-20 -15 -11 2 5 7 10 11 12 13 14 14	 -1	-1
-25 -20 -15 -10 -5 5 7 8 9 10 11 12	  5	5
