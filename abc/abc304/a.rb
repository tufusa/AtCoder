n = gets.to_i
ps = n.times.map{ gets.split }
i = ps.index(ps.min_by{ _1[1].to_i })
res = []
n.times do
  res << ps[i % n][0]
  i += 1
end
puts res