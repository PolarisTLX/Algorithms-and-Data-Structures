https://www.learneroo.com/modules/4/nodes/7


# -take original array
# -create a new array made of the first 2 elements
# -sort that.
# -replace the first 2 elements of the old array with this new sorted array of length 2
# (the remaning elements stay the same)
# -print that whole thing

# -now create another new array of length+1
# -sort that
# -replace
# -print

# repeat till the new array length = original array length

def do_stuff(ar)

	# start with first 2 elements [0..1]
	sub_length = 1
	while sub_length < ar.length

		sub_array = ar[0..sub_length]
		sub_array = sorting(sub_array)

		#original array = sub_array + last elements of original array
		if sub_array.length < ar.length
			ar = sub_array + ar[sub_array.length..-1]
		else
			ar = sub_array
		end

		puts ar.join(" ")
		sub_length += 1
	end
end

# this returns the sub_array sorted:
def sorting(ar)

	# remove and store last element of the array provided
	last = ar.pop

	i = 0

	# while i < ar.length     (THIS CAUSES ENDLESS LOOP)
	max = ar.length
	while i < max

		if last < ar[i]
			ar.insert(i, last)
			break
		else
			i += 1
		end

		# for when the element just belongs at the end
		if i == ar.length
			ar.push(last)
		end
	end

	return ar
end


# ar = [1,4,3,6,9,2]
#
# do_stuff(ar)

t = gets.to_i
for i in 1..t do
		n=gets
		ar = gets.strip.split.map {|i| i.to_i}
		do_stuff(ar)
end



Correct Output:
1 4 3 6 9 2
1 3 4 6 9 2
1 3 4 6 9 2
1 3 4 6 9 2
1 2 3 4 6 9 
