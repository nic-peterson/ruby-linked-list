class Node
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList
  # append(value) adds a new node containing value to the end of the list

  # prepend(value) adds a new node containing value to the start of the list
  # size returns the total number of nodes in the list
  # head returns the first node in the list
  # tail returns the last node in the list
  # at(index) returns the node at the given index
  # pop removes the last element from the list
  # contains?(value) returns true if the passed in value is in the list and otherwise returns false.
  # find(value) returns the index of the node containing value, or nil if not found.
  # to_s represent your LinkedList objects as strings, so you can print them out and preview them in the console. The format should be: ( value ) -> ( value ) -> ( value ) -> nil
  # Extra credit
  # insert_at(value, index) that inserts a new node with the provided value at the given index.
  # remove_at(index) that removes the node at the given index.
end

=begin
node1 = Node.new("one")
node2 = Node.new("two", node1)

puts "node1: #{node1.value}"
puts "node2: #{node2.value}"
=end
