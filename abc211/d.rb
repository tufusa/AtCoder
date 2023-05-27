n, m = gets.split.map(&:to_i)
map = Array.new(n){ [] }
mod = 10**9 + 7
m.times do
    a, b = gets.split.map(&:to_i)
    map[a - 1].push(b - 1)
    map[b - 1].push(a - 1)
end
dist = Array.new(n, -1)
dist[n - 1] = 0
que = [n - 1]
while(not que.empty?)
    v = que.shift
    map[v].each do |t|
        if dist[t] == -1
            dist[t] = (dist[v] + 1) % mod
            que.push(t)
        end
    end
end
dist2 = Array.new(n, 0)
dist2[0] = 1
already = Array.new(n, false)
que = [0]
while(not que.empty?)
    v = que.shift
    already[v] = true
    list = []
    (map[v].select{|x| !already[x] && dist[x] < dist[v]}).each do |i|
        dist2[i] += dist2[v]
        que.push(i)
    end
    que.uniq!
end
puts dist2[n - 1]