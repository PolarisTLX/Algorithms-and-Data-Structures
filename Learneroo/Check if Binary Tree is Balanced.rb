https://www.learneroo.com/modules/100/nodes/642
Can you check if a tree is a height-balanced?

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

    if i >= ar.length || ar[i] == 0
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

    return height if node.nil?

    #each run adds to height

    # check if height > max_height,  if yes, replace max_height
    # max_height = height if height > max_height

    #recursive on each left and right child
    left_height = find_height(node.left, height + 1)  #unless node.left == nil  # child does not exist
    right_height = find_height(node.right, height + 1)  #unless node.right == nil  # child does not exist

    # return max_height
    left_height > right_height ? left_height : right_height

end


# THIS IS THE ONLY ADDED FUNCTION FOR THIS CHALLENGE + CALLING in do_stuff
def height_balanced?(node)
    return true if node.nil?

    if (find_height(node.left) - find_height(node.right)).abs < 2 &&
        height_balanced?(node.left) && height_balanced?(node.right)
        return true
    else
        return false
    end
end

def do_stuff(ar)
    print height_balanced?(array_to_tree(ar, 0))
    print "\n"
end

t = gets.to_i
for i in 1..t do
        n=gets
        ar = gets.strip.split.map {|i| i.to_i}
        do_stuff(ar)
end
