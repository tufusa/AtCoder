n = gets.to_i
pts = n.times.map{ gets.split.map(&:to_f) }
ans = 0
pts.combination(2) { |p1, p2| ans += 1 if ((p2[1] - p1[1]) / (p2[0] - p1[0]))**2 <= 1 }
puts ans