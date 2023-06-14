n, m, d = gets.split.map &:to_i
as = gets.split.map &:to_i
bs = gets.split.map(&:to_i).sort
res = []
as.each do |a|
  i = bs.bsearch_index{ _1 > a + d }.then{ _1 ? _1 - 1 : m - 1 }
  next if (a - bs[i]).abs > d
  res << a + bs[i]
end
puts res.max || -1