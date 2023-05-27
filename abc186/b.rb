h, w = gets.split.map(&:to_i)
a = h.times.map{ gets.split.map(&:to_i) }.flatten
puts a.sum - a.min * h * w