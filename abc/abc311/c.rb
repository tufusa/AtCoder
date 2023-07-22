n = gets.to_i
as = gets.split.map{ _1.to_i - 1 }
g = Array.new(n)
as.each_with_index{|a, i| g[i] = a }
seen = Array.new(n, false).tap{ _1[0] = true }
que = [0]
ans = nil
while now = que.shift
  nx = g[now]
  if seen[nx]
    ans = nx
    break
  end
  que << nx
  seen[nx] = true
end
path = [ans]
while true
  nx = g[path[-1]]
  break if nx == ans
  path << nx
end
puts path.size
puts path.map{ _1 + 1 }.join ?\s