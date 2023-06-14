n, x = gets.split.map(&:to_i)
a = n.times.map{ gets.split.map(&:to_i) }
s = 0
for i in 0...n
    s += a[i][0] * a[i][1]
    if s > 100 * x
        puts i + 1
        exit
    end
end
puts -1