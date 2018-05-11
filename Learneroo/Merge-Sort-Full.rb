https://www.learneroo.com/modules/101/nodes/504

Challenge
Use your merge method to completely sort an unsorted array.

In this challenge you need to print the data that accompanies each integer in a list.
Example [[21, "string1"],[42,"string2"]....]

In addition, if two strings have the same integers, you need to print the strings in their original order. This means your sorting algorithm will need to be stable, i.e. that the original order is maintained for equal elements.

Recursively call mergesort on each half and then merge the results together.

# Additional YouTube explanation that was needed:  https://www.youtube.com/watch?v=EeQ8pwjQxTM
# Even better explanation:  https://www.youtube.com/watch?v=uEbdK2CG_B8&feature=youtu.be&t=1h2m   (1h2m to 1h14m)

# //split array in two,
# //split those arrays in two
# //split until arrays of 1 element

def merge_sort(ar)
  if ar.length > 1 # //&& !ar[1].is_a(String)
    left_ar = ar[0..((ar.length/2)-1)]
    right_ar = ar[ar.length/2..-1]
    # //recussively call until array is down to 1 element
    merge_arrays((merge_sort(left_ar)),(merge_sort(right_ar)))
  else
    return ar
  end
end


def merge_arrays(first_half, second_half)

    # //not needed in this case since halves are now just 1 element
	# //first_half = ar[0..(ar.length/2)-1]
	# //second_half = ar[(ar.length/2)..-1]
	final = []

	index1 = 0
	index2 = 0

	while index1 < first_half.length && index2 < second_half.length do
		#// the [0] is added as we are only looking at the integer / first value
		#// puts first_half[index1][0]
		#// puts second_half[index2][0]
		if first_half[index1][0] <= second_half[index2][0]
		#// Needs to be a <=   to keep the proper original order
			final << first_half[index1]
			index1 += 1
		else
			final << second_half[index2]
			index2 += 1
		end
	end

	#// add/catch remaining elements if uneven:
	while index1 < first_half.length do
		final << first_half[index1]
		index1 += 1
	end

	while index2 < second_half.length do
		final << second_half[index2]
		index2 += 1
	end

	#// no longer want to return the strings in this example
	#// string_array = []
	#// final.each do |element|
	#// 	string_array << element[1]
	#// end

	#// return string_array.join(" ")

	return final
end

t = gets.to_i
for i in 1..t do
		n = gets.chomp.to_i
		ar = []
		n.times do
			small_ar = gets.strip.split(" ")
			ar << [small_ar[0].to_i, small_ar[1]]
		end
		# //print ar
		# //need only the strings (ar[1]) of each:
		merge_sort(ar).each do |element|
			print element[1], " "
		end
		print "\n"
end


# ONLY SHOWING THE FIRST EXAMPLE OF 20 ELEMENTS:

INPUT:

1 
20
0 ab
6 cd
0 ef
6 gh
4 ij
0 ab
6 cd
0 ef
6 gh
0 ij
4 that
3 be
0 to
1 be
5 question
1 or
2 not
4 is
2 to
4 the

CORRECT OUTPUT:   ab ef ab ef ij to be or not to be ij that is the question cd gh cd gh
