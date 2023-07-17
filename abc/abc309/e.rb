n, m = gets.split.map &:to_i
ps = gets.split.map{ _1.to_i - 1 }
ins = m.times.map{ gets.split.map &:to_i }.group_by{ _1[0] }.map{|k, v| [k, v.max_by{ _1[1] }[1]] }
g = Array.new(n){ [] }
ps.each.with_index(1){|pt, i| g[pt] << i }
levs = Array.new(n, 0)
ins.each {|x, y| levs[x - 1] = y + 1 }
que = [0]
while now = que.shift
  nxlev = levs[now] - 1
  g[now].each do |nx|
    que << nx
    levs[nx] = [nxlev, levs[nx]].max
  end
end
puts levs.count{ _1 > 0 }