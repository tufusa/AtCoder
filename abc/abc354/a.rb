H = gets.to_i
h = 0
d = 0
while true
  h += 2**d
  d += 1
  if h > H
    puts d
    exit
  end
end