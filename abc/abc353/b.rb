n, k = gets.split.map &:to_i
as = gets.split.map &:to_i
ans = 0
g = 0
as.each do |a|
  if g + a > k
    ans += 1
    g = a
    next
  end
  g += a
end
puts ans + 1