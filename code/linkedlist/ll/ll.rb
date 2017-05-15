require './node.rb'
#makes a random string I think
def generate_code(number)
  charset = Array('a'..'z')
  Array.new(number) { charset.sample }.join
end
class List

  def initialize(val)
    @head = Node.new(val,nil)
  end

  def add(val)
    current = @head
    while current.next_node != nil
      current = current.next_node
    end
    current.next_node = Node.new(val, nil)
  end

  def return_list
    elements = []
    current = @head
    while current.next_node != nil
      elements << current
      print "#{current.val}-->"
      current = current.next_node
    end
    elements << current
  end

end
a = List.new("hi")
for x in 1..100
  q = generate_code(10)
  q.to_s
  a.add(q)
end
a.return_list
