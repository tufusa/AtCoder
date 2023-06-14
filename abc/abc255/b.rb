n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
xy = n.times.map{ gets.split.map(&:to_i) }
max = 0
for i in 0...n
    mindist = 10000000000 ** 2
    for j in 0...k
        dist = (xy[i][0] - xy[a[j] - 1][0]) ** 2 + (xy[i][1] - xy[a[j] - 1][1]) ** 2
        if dist < mindist
            mindist = dist
        end
    end
    if mindist > max
        max = mindist
    end
end
puts max ** 0.5