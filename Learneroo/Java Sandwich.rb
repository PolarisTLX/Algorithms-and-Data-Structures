https://www.learneroo.com/modules/47/nodes/272

def do_stuff(text)
	if text.include?("Java") == false
		return false
	end
	midpoint = (text.length/2)-1
	if text[midpoint-2..midpoint+2].include?("Java") == false
		return false
	end
	# if text.index("Java").between?(midpoint-2,midpoint-1) == false
	# 	return false
	# end
	return true
end

t = gets.to_i
for i in 1..t do
	text = gets
	print do_stuff(text), "\n"
end
