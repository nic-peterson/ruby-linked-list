class Node
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList
  def initialize
    @head = nil
    @size = 0
  end

  # append(value) adds a new node containing value to the end of the list
  def append(value)
    if @head
      tail.next_node = Node.new(value)
    else
      @head = Node.new(value)
    end
    @size += 1
  end

  # prepend(value) adds a new node containing value to the start of the list
  def prepend(value)
    new_head = Node.new(value)
    new_head.next_node = @head
    @head = new_head
    @size += 1
  end

  # size returns the total number of nodes in the list
  def size
    @size
  end

  # head returns the first node in the list
  def head
    @head
  end

  # tail returns the last node in the list
  def tail
    current = @head
    current = current.next_node while current.next_node
    current
  end

  # at(index) returns the node at the given index
  def at(index)
    if (index < 0 || index > @size)
      puts "Out of bounds!"
    else
      current = @head
      temp_index = 0
      until temp_index == index
        current = current.next_node
        temp_index += 1
      end
    end
    current
  end

  # pop removes the last element from the list
  def pop
    # empty list
    case @size
    when 0
      puts "List is empty!"
      nil
    when 1
      value = @head.value
      @head = nil
      @size -= 1
      value
    else
      current = @head
      current = current.next_node while current.next_node.next_node
      value = current.next_node.value
      current.next_node = nil
      @size -= 1
      value
    end
  end

  # contains?(value) returns true if the passed in value is in the list and otherwise returns false.
  def contains?(value)
    bool = false
    current = @head
    while current != nil
      if (current.value == value)
        bool = true
        break
      else
        current = current.next_node
      end
    end
    bool
  end

  # find(value) returns the index of the node containing value, or nil if not found.
  def find(value)
    if contains?(value)
      index = 0
      current = @head
      while current != nil
        return index if current.value == value

        current = current.next_node
        index += 1
      end
    else
      return nil
    end
  end

  # to_s represent your LinkedList objects as strings, so you can print them out and preview them in the console.
  # The format should be: ( value ) -> ( value ) -> ( value ) -> nil
  def to_s
    current = @head
    str = ""
    while current != nil
      str += "( #{current.value} ) -> "
      current = current.next_node
    end
    str + "nil"
  end

  # Extra credit
  # insert_at(value, index) that inserts a new node with the provided value at the given index.
  def insert_at(value, index)
    return prepend(value) if index == 0
    return append(value) if index == @size

    if index < 0 || index > @size
      puts "Index out of bounds"
      return
    end

    new_node = Node.new(value)
    current = @head
    (index - 1).times { current = current.next_node }

    new_node.next_node = current.next_node
    current.next_node = new_node
    @size += 1
  end

  # remove_at(index) that removes the node at the given index.
  def remove_at(index)
    if index < 0 || index >= @size
      puts "Index out of bounds"
      return
    end

    if index == 0
      @head = @head.next_node
      @size -= 1
      return
    end

    current = @head
    (index - 1).times { current = current.next_node }

    current.next_node = current.next_node.next_node
    @size -= 1
  end
end

list = LinkedList.new
list.append("one")
list.append("two")
list.append("three")

p list

list.prepend("spartacus")
p list

p list.size

=begin
print "#{list.head.value}\n"
print list.at(-1)
print list.at(10)
print "#{list.at(0).value}\n"
print "#{list.at(1).value}\n"
print "#{list.at(2).value}\n"
print "#{list.at(3).value}\n"
=end

list.pop
p list

list.append("three")
p list
# p list.contains?("spartacus")
# p list.contains?("nic")

p list.contains?("spartacus")
p list.contains?("one")
p list.contains?("two")
p list.contains?("three")

p "Find => value: spartacus index: #{list.find("spartacus")}"
p "Find => value: one index: #{list.find("one")}"
p "Find => value: two index: #{list.find("two")}"
p "Find => value: three index: #{list.find("three")}"

p list.to_s
# p list.find("nic")
=begin
node1 = Node.new("one")
node2 = Node.new("two", node1)

puts "node1: #{node1.value}"
puts "node2: #{node2.value}"
=end
