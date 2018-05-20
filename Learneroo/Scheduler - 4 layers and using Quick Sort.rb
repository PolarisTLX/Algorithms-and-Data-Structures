https://www.learneroo.com/modules/101/nodes/501

You are working on a scheduler app. The user would like to attend as many events as possible but cannot attend events that overlap. Can you find the schedule with the greatest number of non-overlapping events?

# Not sure if we did this:
See if you can find an O(n log n) solution.




def do_stuff(ar, indexF)
	#final_array = []

	# each pair is a range,
	# add the first range

	temp_array = []

	# add 1 pair to temp_array:
	temp_array << ar[indexF..indexF+1]


	# check that the first and last number of the range does not! exist between that first range
	# if not, add it to the final array.
	# check the next range, and check those first two number not! exist between the range of either of the ranges currently in the list
	# repeat till you have checked all the ranges.
	indexL = 0
	while indexL < ar.length do
		#check both next numbers exist in range

		i = 0
		fits = true

		# check this next pair (ar[index], ar[index+1])
		# to see if is between any ranges in final_array
		while i < temp_array.length do
			if ar[indexL].between?(temp_array[i][0], temp_array[i][1]) ||
			   ar[indexL+1].between?(temp_array[i][0], temp_array[i][1])
			   fits = false
			end

			# also check the other way around
			if temp_array[i][0].between?(ar[indexL], ar[indexL+1]) ||
			   temp_array[i][1].between?(ar[indexL], ar[indexL+1])
			   fits = false
			end

			i += 1
		end

		# if this next pair does not exists between any pairs in final_array
		# push to final_array
		temp_array << [ar[indexL], ar[indexL+1]] if fits == true
		#print temp_array

		indexL += 2
	end

	# check the length of your array after this first pass through.
	# remember final_array and it's length

	# replace final array if temp_array is longer
	# final_array = temp_array if temp_array.length > final_array.length

	# #another loop with fresh final_array, but starting from next pair
	# indexF += 2
	# # nth pass until starting from last pair of ranges
	# while indexF < ar.length do
	# 	do_stuff(ar, indexF, final_array)
	# end


	return temp_array


end

# call do_stuff, until indexF >= ar.length
def layer4(ar)

	final_array = []
	indexF = 0

	while indexF < ar.length
		# call layer 3 (do_stuff)

		# check the length of your array after this first pass through.
		# remember final_array and it's length

		# replace final array if temp_array is longer
		if do_stuff(ar, indexF).length > final_array.length
			final_array = do_stuff(ar, indexF)
		end

		indexF += 2
	end

	# Final longest array needs to be sorted numerically
	return sort_final(final_array)
	# return final_array
end


# THIS IS ALMOST EXACTLY TAKEN FROM FILE:  "Quick Sort - Advanced(replace-in-situ).rb"
# This line:  if element[0] <= pivot[0]
# needed to be modified from:   if element <= pivot
# due to array of array in this problem.

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
		# print the inner arrays (pairs) in the final_array
		# not the entire final_array
		layer4(ar).each do |pairs|
			print pairs, " "
		end
		print "\n"
end



Feedback sent to site:
    We came up with the correct solution (even though test case #2 has two possible valid solutions. But the spacing in how arrays naturally print is not compatible with the desired output format:

    Correct Output Your Output
    [1,3] [5,6] [7,9] [1, 3] [5, 6] [7, 9] <-- This is correct except for internal array spacing

    The "Correct Output" should be adjusted.
    And Case # 2 should also be fixed as follows:
    [1,2] [4,5] [11,14] should be [1, 2] [3, 7] [11, 14]




Input	                              Correct Output	                      Your Output
4 8 1 3 7 9 5 6	                    [1,3] [5,6] [7,9]	                    [1, 3] [5, 6] [7, 9]
3 7 1 2 3 9 1 5 4 5 11 14	          [1,2] [4,5] [11,14]	                  [1, 2] [3, 7] [11, 14]
0 1 14 16 4 8 10 12 7 9 8 15 3 5	  [0,1] [3,5] [7,9] [10,12] [14,16]	    [0, 1] [3, 5] [7, 9] [10, 12] [14, 16]
2 6 5 10 7 12 0 9 4 8	              [2,6] [7,12]	                        [2, 6] [7, 12]
