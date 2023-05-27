r, c = gets.split.map(&:to_i)
a = 2.times.map{ gets.split.map(&:to_i) }
puts a[r - 1][c - 1]