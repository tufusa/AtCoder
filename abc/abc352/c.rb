n = gets.to_i
abs = n.times.map { gets.split.map &:to_i }
sum = abs.sum { _1[0] }
ans = 0
abs.each do |a, b|
  ans = [ans, sum - a + b].max
end
puts ans