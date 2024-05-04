require 'sorted_set'

n, k = gets.split.map &:to_i
ps = gets.split.map &:to_i
h = ps.map.with_index{ [_1, _2] }.sort_by{ _1[0] }.map{ _1[1] }.tap{ _1.unshift nil }
smax = SortedSet[]
smin = SortedSet[]
ans = 10**100
(1..k).each { smin << h[_1] }
(1..k).each { smax << -h[_1] }
min = smin.first
max = -smax.first
ans = [ans, max - min].min
(1..(n - k)).each do |i|
  smin.delete h[i]
  smin << h[k + i]
  smax.delete -h[i]
  smax << -h[k + i]
  min = smin.first
  max = -smax.first
  ans = [ans, max - min].min
end
puts ans