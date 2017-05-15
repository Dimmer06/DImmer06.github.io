require './node.rb'
=begin
  I am not sure if this really qualifies as a linked list as the objects are
  linked but the methods of the data structure are all based in ruby's array
  methods so I am not submitting this one
=end
class Linked_list
  @@size = 0
  @@nodes = []

  def append(value) #done
    if @@nodes.empty? == true
      a = Node.new(value, nil)
      @@nodes.push(a)
      @@size += 1
    else
      a = Node.new(value, nil)
      @@nodes.push(a)
      @@nodes[@@size - 1].next_node = a
      @@size += 1
    end
  end

  def prepend(value) #done
    a = Node.new(value, @@nodes[0])
    @@size += 1
    @@nodes.insert(0, a)
  end

  def size #done
    puts @@size
  end

  def head #done
    puts @@nodes[0].value
  end

  def tail #done
    puts @@nodes[@@size - 1].value
  end

  def at(index) #done
    puts @@nodes[index].value
  end

  def pop #done
    left = @@size - 2
    @@nodes[@@size - 1].value = nil ; @@nodes[@@size - 1].next_node = nil
    @@nodes[left].next_node = nil
    @@nodes.delete_at(@@size-1)
    @@size -= 1
  end

  def contains(val) #done
    z = "false"
    for x in 0..(@@size - 1)
      z = "true" if val == @@nodes[x].value
    end
    puts z
  end

  def find(val)#done
    z = false
    for x in 0..(@@size - 1)
     if val == @@nodes[x].value
       puts "#{val} is at #{x}"
       z = true
     end
    end
    puts "#{val} was not found" if z == false
  end

  def to_s #done
    for x in 0..@@size
      if @@nodes[x] != nil
        puts "#{@@nodes[x].value}-->"
      else
        puts "nil"
      end
    end
  end

  def insert_at(val, index) #done
    if index > (@@size - 1) || @@nodes.empty? == true
      append(val)
    elsif index <= 0
      prepend(val)
    else
      left = @@nodes[index - 1]
      right = @@nodes[index]
      a = Node.new(val, right)
      @@nodes.insert(index, a)
      left.next_node = a
    end
    @@size += 1
  end

  def remove_at(index) #done
    right = index + 1
    left = index - 1
    @@nodes[index].value = nil ; @@nodes[index].next_node = nil
    @@nodes[left].next_node = @@nodes[right]
    @@nodes.delete_at(index)
  end
end
