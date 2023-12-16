class Node
  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end

  # Getter method for value
  def value
    @value
  end

  # Getter method for next_node
  def next_node
    @next_node
  end

  # Setter method for value
  def value=(value)
    @value = value
  end

  # Setter method for next_node
  def next_node=(node)
    @next_node = node
  end
end

class LinkedList
end

node1 = Node.new("one")
node2 = Node.new("two", node1)

puts "node1: #{node1.value}"
puts "node2: #{node2.value}"
