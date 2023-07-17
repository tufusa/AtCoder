n, m = gets.split.map &:to_i
xs = []
(1..(m.**(0.5).ceil)).each do |a|
  b = Rational(m, a).ceil
  next if b > n || a > n
  xs << a * b
end
puts xs.min || -1