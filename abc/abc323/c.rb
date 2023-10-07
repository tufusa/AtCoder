n, m = gets.split.map &:to_i
as = gets.split.map &:to_i
ss = n.times.map { gets.chomp.chars }
ps = ss.map.with_index do |s, idx|
  (0...m).sum { s[_1] == 'o' ? as[_1] : 0 } + idx + 1
end
max = ps.max
res = []
(0...n).each do |i|
  dif = max - ps[i]
  pbs = as.zip(ss[i]).filter { _1[1] == 'x' }.sort_by { -_1[0] }
  cnt = 0
  while dif > 0
    dif -= pbs[cnt][0]
    cnt += 1
  end
  res << cnt
end
puts res