https://www.learneroo.com/modules/20/nodes/149

Numbers to Words

Given a number from 1 to 4 (inclusive), return a word representation of the number. For example, given 2, return two. If the number is greater than 4, return the phrase too large. If the number is less than 1, return the phrase too small.


def do_stuff(a)
	#your code here
	numHash = {
		1 => "one",
		2 => "two",
		3 => "three",
		4 => "four"
	}

	if a < 1
		print "too small"
	elsif a > 4
		print "too large"
	else
		numHash[a]
	end


end


#boilerplate code
t = gets.to_i
for i in 1..t do
	a, b = gets.strip.split.map {|i| i.to_i}
	puts do_stuff(a)
end
