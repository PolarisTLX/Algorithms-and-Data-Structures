class Node
	attr_accessor :value, :left, :right

	def initialize(value)
		@value = value
		@left = nil
		@right = nil
	end
end

def arrayToTree(ar, i, node=nil)

	if(i >= ar.length || ar[i]==0)
		return nil
	end

	node = Node.new(ar[i])
	node.left = arrayToTree(ar, 2*i+1)
	node.right = arrayToTree(ar, 2*i+2)
	return node
end

# use in-order traversing as simplest due to automatically start from lowest and go through in accending value order
# have to use global variable $currentNode, because cannot send it back up the stack otherwise
def inOrder(node)

	if(node == nil)
		return true
	end

	return false unless inOrder(node.left)

	if node.value < $currentNode
		return false
	end
	$currentNode = node.value
	# compare to previous value?
	# return false if not greater than previous, otherwise continue
	return false unless inOrder(node.right)
	return true
end

def do_stuff(ar)

	print inOrder(arrayToTree(ar, 0))
	print "\n"

end

t = gets.to_i
for i in 1..t do
		n=gets
		ar = gets.strip.split.map {|i| i.to_i}
		$currentNode = 0
		do_stuff(ar)
end





# ATTEMPT TO PERFORM WITHOUT GLOBAL VARIABLE $currentNode WHICH IS NOT WORKING due to variable currentNode does not make it back up the stack.

class Node
	attr_accessor :value, :left, :right

	def initialize(value)
		@value = value
		@left = nil
		@right = nil
	end
end

def arrayToTree(ar, i, node=nil)

	if(i >= ar.length || ar[i]==0)
		return nil
	end

	node = Node.new(ar[i])
	node.left = arrayToTree(ar, 2*i+1)
	node.right = arrayToTree(ar, 2*i+2)
	return node
end

# use in-order traversing as simplest due to automatically start from lowest and go through in accending value order
def inOrder(node, currentNode=0)

	if(node == nil)
		return true
	end

	return false unless inOrder(node.left, currentNode)

	if node.value < currentNode
		return false
	end
	currentNode = node.value
	# compare to previous value?
	# return false if not greater than previous, otherwise continue
	return false unless inOrder(node.right, currentNode)
	return true
end


def do_stuff(ar)

	print inOrder(arrayToTree(ar, 0))
	print "\n"

end

t = gets.to_i
for i in 1..t do
		n=gets
		ar = gets.strip.split.map {|i| i.to_i}
		do_stuff(ar)
end
