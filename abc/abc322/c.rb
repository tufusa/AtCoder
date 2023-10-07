n, m = gets.split.map &:to_i
as = gets.split.map &:to_i
res = []
(1..n).each do |d|
  nx = as.bsearch { _1 >= d }
  res << nx - d
end
puts res
