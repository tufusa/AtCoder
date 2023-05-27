h, w, n = gets.split.map &:to_i
qs = n.times.map{ gets.split.map &:to_i }
dif = Array.new(h + 2){ Array.new(w + 2, 0) }
qs.each do |a, b, c, d|
  dif[a][b] += 1
  dif[a][d + 1] -= 1
  dif[c + 1][b] -= 1
  dif[c + 1][d + 1] += 1
end
(1..h).each do |y|
  (1..w).each do |x|
    dif[y][x] += dif[y - 1][x] + dif[y][x - 1] - dif[y - 1][x - 1]
  end
end
puts dif[1..h].map{ _1[1..w].map(&:to_s).join ?\s }