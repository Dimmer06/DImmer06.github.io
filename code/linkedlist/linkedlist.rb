require './node.rb'
require './list.rb'
list = Linked_list.new
list.append("hello")
list.prepend("world")
list.append("foo")
list.prepend("bar")
list.to_s
puts "Size of list"
list.size
puts "Top of list"
list.head
puts "Bottom of list"
list.tail
puts "List at a given value (1)"
list.at(1)
puts "Deletes last value in the list"
list.pop
puts "Searches the list for a given value and returns true or false"
list.contains("hello")
list.contains("cats")
puts "Finds a given value and returns the index "
list.find("foo")
list.find("bob")
puts "Inserts a given value at a given index"
list.insert_at("car", 2)
list.to_s
puts "Deletes a value at a given index"
list.remove_at(2)
list.to_s
