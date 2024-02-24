n = gets.to_i
as = gets.split.map &:to_i
st = (n - 1).times.map { gets.split.map &:to_i }
(n - 1).times do |i|
  as[i + 1] += st[i][1] * (as[i] / st[i][0])
end
puts as[-1]