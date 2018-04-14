https://www.learneroo.com/modules/99/nodes/515


class Node
    attr_accessor :value, :next_node
    def initialize(value, next_node=nil)
        @value = value
        @next_node = next_node
    end
end

class LinkedList

    def initialize
        @head = 0
        @tail = 0
        @count = 0
    end


  def add(number)
      new_node = Node.new(number)
    @tail.next_node = new_node unless @tail == 0
    @tail = new_node
    @head = new_node if @head === 0
    @count += 1
  end

  def get(index)
      return nil if index > @count - 1
    current_node = @head
    index.times {current_node = current_node.next_node}
    current_node.value
  end

end


def do_stuff(a, b)
    if a == -9
        @list.add(b)
    elsif a == -6
        puts @list.get(b)
    end
end

#boilerplate code
t = gets.to_i
@list = LinkedList.new
for i in 1..t do
    a, b = gets.strip.split.map {|i| i.to_i}
    do_stuff(a, b)
end
