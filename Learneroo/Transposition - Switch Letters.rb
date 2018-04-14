TRANSPOSITION

Transposition Error is when two letters are swapped, such as in "hte" instead of "the", or "rign" instead of "ring".

Given a string of characters, can you fix every place where "gn" appears so it becomes "ng" instead? If there are multiple "g"s in a row, the "n" should be swapped with the first "g". No "gn" should appear in the final text, so be careful with all possibilities!

Full Credit
Try to solve this challenge with only one pass through the text.



def do_stuff(text)
	#your code
	new_string = ""
	stack_g = []
	text.each_char do |char|

		if char == "g"
			stack_g << char
		elsif char == "n"
			new_string << char
		else  #push all the "g"s
			new_string << stack_g.join("") unless stack_g[-1].nil?
			# clear the stack to restart
			stack_g = []
			new_string << char
		end

	end
	# push any remaining "g"s left in the stack
	new_string << stack_g.join("") unless stack_g[-1].nil?
	print new_string
end

t = gets.to_i
for i in 1..t do
	text = gets
	do_stuff(text)
end


Input  	Correct Output  	Your Output
he was searchign on Bign for signign kigns	he was searching on Bing for singing kings	he was searching on Bing for singing kings

rignadingdiggn!	  ringadingdingg!  	ringadingdingg!
gngngnnggnngggnnn  	nnnnnnnnngggggggg  	nnnnnnnnngggggggg





# def do_stuff(text)
# 	#your code
# 	new_string = ""
# 	stack_g = []
# 	stack_n = []
# 	text.each_char do |char|
# 		if char == "g"
# 			stack_g << char
# 		elsif stack_g[-1] == "g" && char == "n"
# 			new_string << char
# 			# new_string << stack[-1]
# 			# need to push ALL the values in the stack as it may have more than 1 "g"
# 			new_string << stack_g.join("")  #this combines all the letters in the stack into 1 string
# 			stack_g = []
# 		# elsif stack_n[-1] == "n" && char == "g"
# 		# 	stack_g << char
# 		else
# 			# new_string << stack[-1] unless stack[-1].nil?
# 			new_string << stack_g.join("") unless stack_g[-1].nil?
# 			new_string << char
# 			stack_g = []
# 		end
#
# 	end
# 	print new_string
# end
#
# t = gets.to_i
# for i in 1..t do
# 	text = gets
# 	do_stuff(text)
# end
