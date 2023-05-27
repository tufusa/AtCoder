n = gets.to_i
a = gets.split.map &:to_i
d = gets.to_i
ds = d.times.map{ gets.split.map{ _1.to_i - 1 } }
maxs = Array.new(n){ [0, 0] }
lmax = rmax = 0
(0...n).each do |i|
  lmax = a[i] if a[i] > lmax
  rmax = a[-(1 + i)] if a[-(1 + i)] > rmax
  maxs[i][0] = lmax
  maxs[-(1 + i)][1] = rmax
end
puts ds.map{|l, r| [maxs[l - 1][0], maxs[r + 1][1]].max }