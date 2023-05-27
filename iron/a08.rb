h, w = gets.split.map &:to_i
x = h.times.map{ gets.split.map &:to_i }
q = gets.to_i
qs = q.times.map{ gets.split.map &:to_i }
sum = Array.new(h + 1){ Array.new(w + 1, 0) }
(0...h).each do |yi|
  (0...w).each do |xi|
    sum[yi + 1][xi + 1] = sum[yi][xi + 1] + sum[yi + 1][xi] - sum[yi][xi] + x[yi][xi]
  end
end
puts qs.map{|a, b, c, d| sum[c][d] - sum[a - 1][d] - sum[c][b - 1] + sum[a - 1][b - 1] }