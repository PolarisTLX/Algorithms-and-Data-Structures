https://www.learneroo.com/modules/47/nodes/275


def do_stuff(word1, word2)
	word1_letters = Hash.new(0)
	word2_letters = Hash.new(0)

	word1.each_char do |letter|
		word1_letters[letter] += 1
	end

	word2.each_char do |letter|
		word2_letters[letter] += 1
	end

	output = true

	word1_letters.each do |key, value|
		if value > word2_letters[key]
			output = false
		end
	end

	output2 = true

	word2_letters.each do |key, value|
		if value > word1_letters[key]
			output2 = false
		end
	end

	return output || output2

end




Input	                 Correct Output	Your Output
pool looped	            true	true
potato tomato	          false	false
carthorse orchestra	    true	true
abcdefghijk fabdce	     true	true
abcdef fabdcb	          false	false
apple snapple	          true	true
ababananan banana	      true	true
banana aannnbbb	        false	false
