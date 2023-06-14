n = gets.to_i
points = n.times.map{ gets.split.map(&:to_i) }.sort_by{ [_1, _2] }
p points