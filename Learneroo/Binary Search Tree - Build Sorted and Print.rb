NOTE: Lesson / File builds directly off of previous file:  Binary Tree - Build and Print.rb

CHALLENGE :
https://www.learneroo.com/modules/32/nodes/406

You will be given an list/array of numbers as input. Insert the numbers (in sorted fashion) one-at-a-time into a binary search tree. Then print out the tree in pre-order.

This highlights the key difference between a Binary Tree and a Binary Search Tree

A Binary Search Tree, like below is built with all the values sorted.

This Interactive Binary Search Tree site is also very helpful to understand:

https://www.cs.usfca.edu/~galles/visualization/BST.html


ANSWER :

class Node
	attr_accessor :value, :left, :right

	def initialize(value)
		@value = value
		@left = nil
		@right = nil
	end
end

def treeInsert(value, node)
	# check to right
	if value >= node.value
		#  check if that node's right value is empty
		if node.right.nil?
			node.right = Node.new(value)
		else
			treeInsert(value, node.right)
		end
	#  check to left ( < than )
	else
		#  check if that node's left value is empty
		if node.left.nil?
			node.left = Node.new(value)
		else
			treeInsert(value, node.left)
		end
	end
end

def arrayToTree(ar, i, node=nil)
	if i >= ar.length
		return nil
	end

	# first node creation ONLY!
	if i == 0
		node = Node.new(ar[i])
	# All other subsequent nodes:
	else
		# perform search to see if to left ( < than ) or right ( >= than )
		treeInsert(ar[i], node)
	end

	arrayToTree(ar, i+1, node)

	return node
end

# printing the tree (in this case in "pre-order")
def preOrder(node)

	if node == nil
		return
	end

	print node.value.to_s + " "
	preOrder(node.left)
	preOrder(node.right)
end

def do_stuff(ar)
	preOrder(arrayToTree(ar, 0))
	print "\n"
end

t = gets.to_i
for i in 1..t do
		n=gets
		ar = gets.strip.split.map {|i| i.to_i}
		do_stuff(ar)
end



Input	Correct Output	Your Output
8 3 10 1 6 14 4 7 13        8 3 1 6 4 7 10 14 13	     8 3 1 6 4 7 10 14 13
5 3 7 1 2 6 8	              5 3 1 2 7 6 8	             5 3 1 2 7 6 8
10 12 15 7 2 23 9 14 21	    10 7 2 9 12 15 14 23 21	   10 7 2 9 12 15 14 23 21
