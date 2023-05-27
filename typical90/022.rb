a, b, c = gets.split.map(&:to_i)
n = a.gcd(b).gcd(c)
puts (a + b + c) / n - 3