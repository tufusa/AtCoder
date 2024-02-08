n = gets.to_i
ks = n.times.map { gets.split.map &:to_i }
hs = Array.new(24, 0)
ks.each do |w, x|
  hs[9 - x] += w
  hs[18 - x] -= w
  if 9 - x < 0 && 18 - x >= 0
    hs[0] += w
  end
end
sum = []
(0...24).each do |i|
  sum << (sum[i - 1] || 0) + hs[i]
end
puts sum.max