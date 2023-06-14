n, d = gets.split.map &:to_i
ps = n.times.map{ gets.split.map &:to_i }
paths = Array.new(n){ [] }
dd = d * d
(0...n).each do |p1|
  (0...n).each do |p2|
    next if p1 == p2

    dx = ps[p1][0] - ps[p2][0]
    dy = ps[p1][1] - ps[p2][1]
    paths[p1] << p2 if dx * dx + dy * dy <= d * d
  end
end
res = Array.new(n, nil)
res[0] = true
que = [0]
while !que.empty?
  now = que.shift
  paths[now].each do |nx|
    if res[nx] == nil
      que << nx
      res[nx] = true
    end
  end
end
puts res.map{ _1 ? 'Yes' : 'No' }
