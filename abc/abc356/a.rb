n, l, r = gets.split.map &:to_i
a = (1..n).to_a
l -= 1
r -= 1
puts (a[0...l] + a[l..r].reverse + a[(r + 1)...n]).join ?\s