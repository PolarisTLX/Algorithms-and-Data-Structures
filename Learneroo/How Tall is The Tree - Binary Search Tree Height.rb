# https://www.learneroo.com/modules/100/nodes/485

# You will given a Tree stored in an array. Find and print the height of the Tree.


class Node
	attr_accessor :value, :left, :right

	def initialize(value)
		@value = value
		@left = nil
		@right = nil
	end
end

# build the tree
def array_to_tree(ar, i)

	if (i >= ar.length || ar[i] == 0 )
		return nil
	end

	node = Node.new(ar[i])
	node.left = array_to_tree(ar, 2*i+1)
	node.right = array_to_tree(ar, 2*i+2)
	return node
end


#max_height = 0

# instead of pre/in/post-order
def find_height(node, height=0)

	if(node == nil)
        return height
    end

	#each run adds to height
	height += 1

	# check if height > max_height,  if yes, replace max_height
	# max_height = height if height > max_height

	#recursive on each left and right child
	left_height = find_height(node.left, height)  #unless node.left == nil  # child does not exist
	right_height = find_height(node.right, height)  #unless node.right == nil  # child does not exist

	# return max_height
	left_height > right_height ? left_height : right_height

end

def do_stuff(ar)
	print find_height(array_to_tree(ar, 0))
	print "\n"
end

t = gets.to_i
for i in 1..t do
		n=gets
		ar = gets.strip.split.map {|i| i.to_i}
		do_stuff(ar)
end



Input	                            Correct Output	 Your Output
2 7 5 2 6 0 9	                    3	               3
1 7 5 2 6 0 9 3 7 5 11 0 0 4 0	  4	               4
5 3 2 9 0 0 7 0 0 0 0 0 0 5 0	    4	               4
