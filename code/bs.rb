#sorts
def bubble_sort(array, direction)
  if direction.to_s == "right"
    k  = array.length - 1
    begin
      swapping = false
      for x in 1..k
        if array[x-1] > array[x]
          n = array[x]
          array.delete_at(x)
          array.insert(x-1, n)
          swapping = true
        end
      end
    end until swapping == false
    return array
  elsif direction.to_s == "left"
    k  = array.length - 1
    begin
      swapping = false
      for x in 1..k
        if array[x-1] < array[x]
          n = array[x]
          array.delete_at(x)
          array.insert(x-1, n)
          swapping = true
        end
      end
    end until swapping == false
    return array
  else
    puts "error"
  end
end
#comes up with an array
array = Array.new
for x in 1..100
  array.push(rand(0..100))
end
puts "#{array}"
3.times { puts "..." }
#direction
#puts "left or right?"
direction = "right"
puts "#{bubble_sort(array,direction)}"
