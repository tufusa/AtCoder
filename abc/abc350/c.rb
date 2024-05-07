n = gets.to_i
as = gets.split.map &:to_i
ps = as.map.with_index { [_1 - 1, _2] }.to_h
ans = []
(0...n).each do |i|
  next if i == ps[i]

  ans << "#{i + 1} #{ps[i] + 1}"
  p1, p2 = i, ps[i]
  a1, a2 = as[p1], as[p2]
  ps[a1 - 1], ps[a2 - 1] = p2, p1
  as[p1], as[p2] = a2, a1
end
puts ans.tap{ puts _1.size }