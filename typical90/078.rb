n, m = gets.split.map(&:to_i)
g = []
m.times do
    a, b = gets.split.map(&:to_i).sort
    if a != b
        g[b - 1] ||= 0
        g[b - 1] += 1
    end
end
puts g.count(1)