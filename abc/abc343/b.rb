n = gets.to_i
g = n.times.map { gets.split.map &:to_i }
ps = Array.new(n){ [] }
(0...n).each do |y|
  (0...n).each do |x|
    next if g[y][x] == 0

    ps[x] << y
    ps[y] << x
  end
end
puts ps.map{ _1.uniq.sort.map{|d| d + 1 }.join ?\s }