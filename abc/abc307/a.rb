n = gets.to_i
as = gets.split.map &:to_i
res = []
as.each_slice(7) do |week|
  res << week.sum
end
puts res.join ?\s