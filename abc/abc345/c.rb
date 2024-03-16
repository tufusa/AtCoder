s = gets.chomp.bytes
n = s.size
h = s.tally
ans = 0
nsw = false
h.each do |k, v|
  ans += (n - v) * v
  nsw = true if v > 1
end
puts ans / 2 + (nsw ? 1 : 0)