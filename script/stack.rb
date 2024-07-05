# Implement Stack class with push, pop and peek functionalities.
class Stack
  def initialize(size)
    @size = size
    @store = Array.new(@size)
    @top = -1
  end
  
  def pop
    if empty?
      nil
    else
      popped = @store[@top]
      @store[@top] = nil
      @top = @top.pred
      popped
    end
  end
  
  def push(element)
    if full? or element.nil?
      nil
    else
      @top = @top.succ
      @store[@top] = element
      self
    end
  end

  def peek
    @store[@top]
  end
  
  def size
    @size
  end

  def full?
    @top == (@size - 1)
  end
  
  def empty?
    @size == 0
  end
end

stack1 = Stack.new(5)
stack1.push(1)
stack1.push(2)
stack1.push(3)
stack1.push(4)
stack1.push(5)

puts stack1.peek 
puts stack1.pop  
puts stack1.peek   
