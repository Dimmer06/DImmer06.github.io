a = 1
b = 1
c = 1
z = 0
while c <= 4000000
  c = a + b
  b = a
  a = c
  if c % 2 == 0
    z = c + z
  else
  end
end
puts z
