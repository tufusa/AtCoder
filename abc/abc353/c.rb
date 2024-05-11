n = gets.to_i
as = gets.split.map &:to_i
ans = (n - 1) * as.sum
h = as.tally.sort_by { _1[0] }
hs = [[0, 0]]
h.each { hs << [_1, hs[-1][1] + _2 ] }
mod = 10**8
cnt = 0
h.each do |k, v|
  dif = [mod - k, k].max
  i = hs.bsearch_index { _1[0] >= dif }
  next if i.nil?

  if hs[i][0] == k
    cnt += (hs[-1][1] - hs[i][1]) * v
    cnt += v * (v - 1) / 2
  else
    cnt += (hs[-1][1] - hs[i - 1][1]) * v
  end
end
ans -= cnt * mod
puts ans