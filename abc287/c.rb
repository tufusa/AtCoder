n, m = gets.split.map &:to_i
paths = Array.new(n){ [] }
m.times.each{ gets.split.map(&:to_i).tap{ paths[_1 - 1] << _2 - 1; paths[_2 - 1] << _1 - 1 } }
now = paths.map(&:size).index(1)
puts('No').tap{ exit } if !now
seen = Array.new(n, 0)
while true
  if paths[now].size == 0
    seen[now] = 1
    break
  end
  break if seen[now] == 1 || paths[now].size > 1
  seen[now] = 1
  paths[paths[now][0]].delete now
  now = paths[now][0]
end
puts seen.sum == n ? 'Yes' : 'No'