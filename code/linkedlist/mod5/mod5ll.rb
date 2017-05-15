require './node.rb'

class Linked_list
  def initialize(val)
    @head = Node.new(val, nil)
  end

  def add(val)
    current = @head
    while current.next_node != nil
      current = current.next_node
    end
    current.next_node = Node.new(val, nil)
  end

  def delete(val)
    current = @head
    if current.val = val
      @head = current.next_node
    else
      while (current.next != nil) && (current.next_node.val != val)
        current = current.next_node
      end
      unless current.next_node == nil
        current.next_node = current.next_node.next_node
      end
    end
  end

  def puts_list
    vals = []
    current = @head
    while current.next_node != nil
      vals.push(current.val)
      current = current.next_node
    end
    vals.push(current.val)
    puts vals
  end
end
