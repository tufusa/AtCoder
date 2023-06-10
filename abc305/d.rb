n = gets.to_i
as = gets.split.map &:to_i
qn = gets.to_i
qs = qn.times.map{ gets.split.map &:to_i }
sum = [0]
as.each_with_index do |t, i|
  next if i == 0
  sum << sum[-1] + (i % 2 == 0 ? as[i] - as[i - 1] : 0)
end
res = []
qs.each do |l, r|
  li = as.bsearch_index{ _1 > l } - 1
  ri = as.bsearch_index{ _1 > r } || n - 1
  sl = [sum[ri] - sum[li], 0].max
  sl -= l - as[li] if li % 2 == 1
  sl -= as[ri] - r if ri % 2 == 0
  res << sl
end
puts res