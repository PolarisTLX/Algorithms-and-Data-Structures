# https://www.learneroo.com/modules/32/nodes/405
# Challenge
# You will be given an array as input, which represents a Tree, as before. Process the array into a Tree of Nodes, as shown above. Then go through the tree and print it in post-order.

# (Print each number space-separated, and each tree on it's own line.)



# First you need your basic class of Node
# which shows that each node has a left and a right and a value
# these need to be accessed
class Node
	attr_accessor :value, :left, :right

	def initialize(value)
    	@value = value
    	@left = nil
    	@right = nil
    end
end


# If your tree is not provided as built, but only provided as an array,
# you need to build the tree from this array
# Step 1. create a node from the class Node  (defined above)
# Step 2. that node will be assigned a "left" as per  2*i+1
#         see https://www.learneroo.com/modules/32/nodes/227
#         this is recursive, it keeps going left, left, left,
#         until there are no more left nodes, you are at the bottom of the tree.
# Step 3. the if statement kicks in, and exists that layer of recursion)
# Step 4. Now goes to the "node.right" set of recursive calls, and repeats.
def arrayToTree(ar, i)

    # this if statement actually is done last (at the bottom of the tree)
    if(i >= ar.length || ar[i]==0)
        return nil
    end

    node = Node.new(ar[i])
    node.left = arrayToTree(ar, 2*i+1)
    node.right = arrayToTree(ar, 2*i+2)
    return node
end

# To print the tree, this example is postOrder
# It is a resursive call in same pattern/steps as above.
def postOrder(node)

    if(node == nil)
        return
    end

    postOrder(node.left)
    postOrder(node.right)
    print node.value.to_s + " "
end

# for pre-order you just have is like this:
#   print node.value.to_s + " "
#   preOrder(node.left)
#   preOrder(node.right)

# for in-order you just have is like this:
#   inOrder(node.left)
#   print node.value.to_s + " "
#   inOrder(node.right)


def do_stuff(ar)
  # you want to print, but you have to feed your printing method an already built tree,
  # which is what the arrayToTree method does, and you need to start this at i = 0
	postOrder(arrayToTree(ar, 0))
	# new line for each test case:
	print "\n"
end


t = gets.to_i
for i in 1..t do
		n=gets
		ar = gets.strip.split.map {|i| i.to_i}
		do_stuff(ar)
end



Input             	             Correct Output	             Your Output
10 1 2 3 4 5 6	                 3 4 1 5 6 2 10	             3 4 1 5 6 2 10
2 7 5 2 6 0 9	                   2 6 7 9 5 2	               2 6 7 9 5 2
1 2 3 4 5 6 7 8 9	8              9 4 5 2 6 7 3 1	           8 9 4 5 2 6 7 3 1
1 7 5 2 6 0 9 3 7 5 11 0 0 4 0	 3 7 2 5 11 6 7 4 9 5 1	     3 7 2 5 11 6 7 4 9 5 1
