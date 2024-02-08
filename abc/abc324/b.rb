require 'set'
v = 1
valid = Set.new
m = 10**18
while true
  valid << v
  v *= 2
  break if v > m
end
v = 1
while true
  valid << v
  v *= 3
  break if v > m
end
valid.to_a.combination(2).each do |x, y|
  valid << x * y
end
puts valid.include?(gets.to_i) ? 'Yes' : 'No'
