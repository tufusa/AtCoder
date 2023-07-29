require 'set'
require 'sorted_set'

n, m, k = gets.split.map &:to_i
paths = m.times.map{ gets.split.map{ _1.to_i - 1 } }
cops = k.times.map{ gets.split.map(&:to_i).tap{ _1[0] -= 1 }}
g = Array.new(n) { [] }
paths.each{|a, b| g[a] << b; g[b] << a }
nodes = Array.new(n, -1)
cops.each{|pos, h| nodes[pos] = h }
sets = SortedSet.new cops.map{ [_1[1], _1[0]] }
n.times do
  now = sets.pop
end
