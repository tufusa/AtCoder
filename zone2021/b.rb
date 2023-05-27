n, d, h = gets.split.map(&:to_i)
b = n.times.map{ gets.split.map(&:to_i) }
ans = []
a = h.to_f / d
b.each do |e|
    ans.push(((h - e[1]).to_f / (e[0] - d)) * e[0] + e[1])
end
res = ans.max
puts (res > 0) ? (res) : (0.0)