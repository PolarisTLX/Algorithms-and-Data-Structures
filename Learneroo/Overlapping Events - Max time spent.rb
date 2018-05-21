https://www.learneroo.com/modules/101/nodes/502

Spinoff of file:  "Scheduler - 4 Layers and using Quick Sort.rb"



Maximum Time Range

Yo are re only able to stay in the hotel if an event is running. Can you find and print the maximum time ranges that you can stay in the hotel?

In this challenge, instead of avoiding overlapping times, you want them!

See if you can find an O(n log n) solution.

I/O Format
The input is the same as the last challenge. Find the optimal range of times of events and print each rnage like this: [start , end].

Sample Input

1
8
10 18 4 6 14 16 5 8
Sample Output

[4, 8] [10, 18]
Explanation
You are given 4 events:

[10,18] [4,6] [14,16] [5,8] [4,8] [10,18] is the maximum time ranges within those times.
Time    0  1  2  3  4  5  6  7  8  9  10 11 12 13 14 15 16 17 18 19 20...
Events              aaaaaaa            cccccccccccccccccccccccc
                       bbbbbbbbbb                 ddddddd
Max.                -------------      ------------------------







# add the first range.
# if the next range overlaps, merge the two array.
# if it doesn't, add it as a separate array.
# repeat

# []
# [[10, 18]]
# [[10, 18], [4, 6]]
# [[10, 18, 14, 16], [4, 6]]
# [[10, 18, 14, 16], [4, 6, 5, 8]]

# .each

#	output << [min, max]

# [[5, 14], [1, 4]]
# [[5, 14, 13, 19], [1, 4]]
# [[5, 14, 13, 19, 3, 6], [1, 4]]
# [[5, 14, 13, 19, 3, 6, 9 , 8], [1, 4]]


def combine_times(ar)

	# initialize our times array with the first time block
	times = [ar[0]]

	# loops through remaining elements
	ar[1..-1].each do |event|
		# loops through the times array
		fits = false
		times.each do |attending|
			min = attending.min
			max = attending.max

			# checks if event is overlapping an existing event (already attending)
			if event[0].between?(min, max) ||
			   event[1].between?(min, max) ||
			   min.between?(event[0], event[1]) ||
			   max.between?(event[0], event[1])
				#attending  = attending + event

				# if overlapping, adds event times to the existing event
				attending << event[0]
				attending << event[1]
				fits = true
				break
			# elsif min.between?(event[0], event[1]) ||
			# 	max.between?(event[0], event[1])
			# 	#attending  = attending + event
			# 	attending << event[0]
			# 	attending << event[1]

			# else # adds new event to the times array
			# 	times << event
			end
		end
		if fits == false
			times << event
		end
	end

	output = []
	times.each do |time|
		min = time.min
		max = time.max
		output << [min, max]
	end

	output

end

def max_time(ar)

	result = combine_times(ar)

	# if it hasn't changed, stop.
	if result == ar
		return sort_final(result)
	else # otherwise, run it again.
		max_time(result)
	end

end

def sort_final(ar)
	pivot = ar[-1]

	lower_index = 0

	ar[0..-2].each_with_index do |element, index|
		if element[0] <= pivot[0]
			ar[index] = ar[lower_index]
			ar[lower_index] = element
			# The first element has been swapped with itself.
			# Now that there is an element lower than the pivot, we can increment lower_index by 1
			lower_index += 1
		else #if element > pivot
			# Do nothing, and leave the element in its current place.
		end
	end

	ar[-1] = ar[lower_index]
	ar[lower_index] = pivot

	#left = ar[0..(lower_index - 1)]
	#right = ar[(lower_index + 1)..-1]

	if ar[0..(lower_index - 1)].length > 1
		ar[0..(lower_index - 1)] = sort_final(ar[0..(lower_index - 1)])
	else
		# Leave the left side alone
	end

	if ar[(lower_index + 1)..-1].length > 1
		ar[(lower_index + 1)..-1] = sort_final(ar[(lower_index + 1)..-1])
	else
		# Leave the right side alone
	end

	ar
end


t = gets.to_i
for i in 1..t do
		n=gets
		ar = gets.strip.split.map {|i| i.to_i}

		time_blocks = []
		i = 0
		while i < ar.length do
			min = ar[i]
			max = ar[i+1]
			time_blocks << [min, max]

			i +=2
		end

		#print time_blocks
		# max_time(time_blocks)

		max_time(time_blocks).each do |pairs|
			print pairs, " "
		end
		print "\n"
end



Input	Correct Output	Your Output
10 18 4 6 14 16 5 8	              [4, 8] [10, 18]    	[4, 8] [10, 18]
5 14 1 4 13 19 3 6 9 8          	[1, 19]       	[1, 19]
11 12 4 7 14 16 0 2 13 15 8 10  	[0, 2] [4, 7] [8, 10] [11, 12] [13, 16]	      [0, 2] [4, 7] [8, 10] [11, 12] [13, 16]
