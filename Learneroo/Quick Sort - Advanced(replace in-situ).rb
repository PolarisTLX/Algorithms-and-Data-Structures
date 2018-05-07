https://www.learneroo.com/modules/4/nodes/45

Quick-Sort Advanced

The previous version of Quicksort was easy to understand, but it was not optimal. It required copying the numbers into other arrays, which takes up more space and time. To make things faster, one can create an "in-place" version of Quicksort, where the numbers are all sorted within the array itself.

Challenge :

Create an in-place version of Quicksort. This time, always select the last element in the 'sub-array' as a pivot. Partition the left side and then the right side of the array. Print out the whole array at the end of every partitioning method.


HERE IS THE SOLUTION THAT JUST PRINTS OUT THE CORRECT FINAL ARRAY / FINAL ANSWER ONLY AT THE LAST STEP:

def do_stuff(ar)
	pivot = ar[-1]

	lower_index = 0

	ar[0..-2].each_with_index do |element, index|
		if element <= pivot
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
		ar[0..(lower_index - 1)] = do_stuff(ar[0..(lower_index - 1)])
	else
		# Leave the left side alone
	end

	if ar[(lower_index + 1)..-1].length > 1
		ar[(lower_index + 1)..-1] = do_stuff(ar[(lower_index + 1)..-1])
	else
		# Leave the right side alone
	end

	ar
end

t = gets.to_i
for i in 1..t do
		n=gets
		ar = gets.strip.split.map {|i| i.to_i}
		puts do_stuff(ar).join(" ")
end






BELOW IS CLOSER TO OUTPUT THAT THE CHALLANGE WANTED (WITH MORE OF THE SUBSTEPS BEING PRINTED OUT)

def do_stuff(ar, length = ar.length)
  # NOTE need to pass "length = ar.length" as additional argument to print the steps closer to what the exercise wants as output, but in this case we only want to print steps, if a particular step involves the full array (and just a deeper recursive call of a smaller subarray)

	pivot = ar[-1]

	lower_index = 0

	ar[0..-2].each_with_index do |element, index|
		if element <= pivot
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

	puts ar.join(" ") if ar.length == length
  # ONLY print "if length of original array" so that we don't print recrusive calls that are of only one of the smaller subsections

	# before = ar[0..(lower_index - 1)]
	# after = ar[(lower_index + 1)..-1]

	if ar[0..(lower_index - 1)].length > 1
		ar[0..(lower_index - 1)] = do_stuff(ar[0..(lower_index - 1)], length)
		puts ar.join(" ") if ar.length == length
    # ONLY print "if length of original array" so that we don't print recrusive calls that are of only one of the smaller subsections
	else
		# Leave the left side alone
	end

	if ar[(lower_index + 1)..-1].length > 1
		ar[(lower_index + 1)..-1] = do_stuff(ar[(lower_index + 1)..-1], length)
		puts ar.join(" ") if ar.length == length
    # ONLY print "if length of original array" so that we don't print recrusive calls that are of only one of the smaller subsections
	else
		# Leave the right side alone
	end

	#print ar.join(" ")
	ar
end

t = gets.to_i
for i in 1..t do
		n=gets
		ar = gets.strip.split.map {|i| i.to_i}
		do_stuff(ar)
		# print "\n"
end



Input
3
7
1 3 9 8 2 7 5
9
9 8 6 7 3 5 4 1 2
100
406 157 415 318 472 46 252 187 364 481 450 90 390 35 452 74 196 312 142 160 143 220 483 392 443 488 79 234 68 150 356 496 69 88 177 12 288 120 222 270 441 422 103 321 65 316 448 331 117 183 184 128 323 141 467 31 172 48 95 359 239 209 398 99 440 171 86 233 293 162 121 61 317 52 54 273 30 226 421 64 204 444 418 275 263 108 10 149 497 20 97 136 139 200 266 238 493 22 17 39


Correct Output
1 3 2 5 9 7 8
1 2 3 5 9 7 8
1 2 3 5 7 8 9
1 2 6 7 3 5 4 9 8
1 2 6 7 3 5 4 8 9
1 2 3 4 6 5 7 8 9
1 2 3 4 6 5 7 8 9
1 2 3 4 5 6 7 8 9
...longer example here ....


Your Output
1 3 2 5 9 7 8
1 2 3 5 9 7 8
1 2 3 5 7 8 9
1 2 6 7 3 5 4 9 8
1 2 3 4 5 6 7 8 9
...longer example here ....
You can see that final answer is correct, but we get an output of all the desired substeps for all examples (we got all the desired substeps for the first example)
