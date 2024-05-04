require 'rbtree'

n, k = gets.split.map &:to_i
ps = gets.split.map &:to_i
h = ps.map.with_index{ [_1, _2] }.to_h
t = RBTree.new
(1..k).each { t[h[_1]] = 0 }
ans = t.last[0] - t.first[0]
(1..(n - k)).each do |i|
  t.delete h[i]
  t[h[k + i]] = 0
  d = t.last[0] - t.first[0]
  ans = d if d < ans
end
puts ans