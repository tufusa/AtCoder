n, q = gets.split.map &:to_i
ts = gets.split.map { _1.to_i - 1 }
m = Array.new(n, 1)
ts.each { m[_1] ^= 1 }
puts m.sum