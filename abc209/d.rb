n, q = gets.split.map(&:to_i)
tree = Array.new(n){ [] }
(1...n).each do
    a, b = gets.split.map(&:to_i)
    tree[a - 1].push(b - 1)
    tree[b - 1].push(a - 1)
end
query = q.times.map{ gets.split.map(&:to_i) }
dist = Array.new(n, -1)
dist[0] = 0
que = [0]
until(que.empty?)
    v = que.shift
    for i in tree[v]
        next if dist[i] != -1
        dist[i] = (dist[v] + 1) % 2
        que.push(i)
    end
end
ans = []
query.each do |c, d|
    if dist[c - 1] == dist[d - 1]
        ans.push("Town")
    else
        ans.push("Road")
    end
end
puts ans