#A stack is where a thing is call first, but the last to be executed.
#A queue is where a thing is call first, and will also be executed first.

#FILO
class Stack
  attr_accessor :array1

  def initialize(array1 = [])
  @array1 = array1
  end

  def add(a)
    array1.push(a)
  end

  def remove
    array1.pop
    array1
  end
end

#FIFO
class Queue
  attr_accessor :array2

  def initialize(array2 = [])
  @array2 = array2
  end

  def add(x)
    array2.push(x)
  end

  def remove
    array2.shift
    array2
  end
end



stack = Stack.new
puts "---Stack---"
puts "Start to add."
print stack.add(1)
puts ""
print stack.add(2)
puts ""
print stack.add(3)
puts ""
puts "Start to remove."
print stack.remove
puts ""
print stack.remove
puts ""
print stack.remove
puts ""



queue = Queue.new
puts "---Queue---"
puts "Start to add."
print queue.add(1)
puts ""
print queue.add(2)
puts ""
print queue.add(3)
puts ""
puts "Start to remove."
print queue.remove
puts ""
print queue.remove
puts ""
print queue.remove
puts ""
