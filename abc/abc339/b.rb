h, w, n = gets.split.map &:to_i
g = Array.new(h) { Array.new(w, 0) }
now = [0, 0]
dir = [[0, -1], [1, 0], [0, 1], [-1, 0]]
d = 0

n.times do
  nx, ny = now
  if g[ny][nx] == 0
    g[ny][nx] = 1
    d = (d + 1) % 4
  else
    g[ny][nx] = 0
    d = (d - 1) % 4
  end
  now = [(nx + dir[d][0]) % w, (ny + dir[d][1]) % h]
end

puts g.map{ _1.map{|i| i == 0 ? ?. : ?# }.join }