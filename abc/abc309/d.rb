n1, n2, m = gets.split.map &:to_i
paths = m.times.map { gets.split.map { _1.to_i - 1 } }
g = Array.new(n1 + n2) { [] }
paths.each {|a, b| g[a] << b; g[b] << a }
nodes = Array.new(n1 + n2, nil)
nodes[0] = [0, 0]
nodes[-1] = [1, 0]
que = [0, n1 + n2 - 1]
while now = que.shift
  g[now].each do |nx|
    next if nodes[nx].nil?.!

    que << nx
    nodes[nx] = [nodes[now][0], nodes[now][1] + 1]
  end
end
puts nodes.group_by{ _1[0] }.values.map{ _1.max_by{|n| n[1] } }.sum{ _1[1] } + 1