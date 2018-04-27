https://www.learneroo.com/modules/108/nodes/536

Challenge
Print the number of prime numbers present in each list provided.  Create a SET of prime numbers first up to 10,000.


require 'prime'   #<------------------ THIS IS IMPORTANT!!!
require 'set'     #<------------------ THIS IS IMPORTANT!!!

def do_stuff(ar)

	my_set = Set.new

	# add all the prime numbers up to 10,000 into the set
	Prime.each(10_000) do |prime|
		my_set << prime
	end

	count = 0

	# check if the elements in the array exist in the set of prime numbers
	ar.each do |element|
		count += 1 if my_set.include?(element)
	end

	print count
end

t = gets.to_i
for i in 1..t do
		n=gets
		ar = gets.strip.split.map {|i| i.to_i}
		do_stuff(ar)
		print "\n"
end


Input	Correct Output	Your Output
2 3 5 6 9	     3	       3
121 17 21 29 11 341 407 19 119 352    	4    	4
7 6 7 3 77 14 28 35 42    	3      	3
