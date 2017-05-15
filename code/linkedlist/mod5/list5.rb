require "./mod5ll.rb"
require "./node.rb"
#just tests everything

a = Linked_list.new("foo")
a.puts_list
puts ""
a.add("bar")
a.puts_list
puts ""
a.delete("foo")
a.puts_list
