def do_stuff(ar)
	first_half = ar[0..(ar.length/2)-1]
	second_half = ar[(ar.length/2)..-1]
	final = []

	index1 = 0
	index2 = 0

	while index1 < first_half.length && index2 < second_half.length do
		if first_half[index1] < second_half[index2]
			final << first_half[index1]
			index1 += 1
		else
			final << second_half[index2]
			index2 += 1
		end
	end

	#add/catch remaining elements if uneven:
	while index1 < first_half.length do
		final << first_half[index1]
		index1 += 1
	end

	while index2 < second_half.length do
		final << second_half[index2]
		index2 += 1
	end

	return final
end

t = gets.to_i
for i in 1..t do
		n=gets
		ar = gets.strip.split.map {|i| i.to_i}
		print do_stuff(ar).join(" "), "\n"
end
