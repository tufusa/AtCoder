require 'set'

n, t = gets.split.map &:to_i
abs = t.times.map { gets.split.map(&:to_i).then{ [_1[0] - 1, _1[1]] } }
ans = []
ps = Array.new(n, 0)
count = { 0 => n }.tap{ _1.default = 0 }
ks = Set[0]

abs.each do |a, b|
  count[ps[a]] -= 1
  ks.delete(ps[a]) if count[ps[a]] == 0
  ps[a] += b
  count[ps[a]] += 1
  ks << ps[a]
  ans << ks.size
end

puts ans