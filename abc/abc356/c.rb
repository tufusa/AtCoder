n, m, k = gets.split.map &:to_i
ts = m.times.map { gets.split.then { [_1[0].to_i, _1[1..(_1[0].to_i)].map(&:to_i), _1[-1]] } }
ts = ts.map do |c, as, r|
  as = as.map { (1 << (_1 - 1)) }.sum
  [c, as, r]
end
ans = 0
(0...(2**n)).each do |i|
  no = false
  ts.each do |c, as, r|
    cnt = (i & as).to_s(2).count(?1)
    if !(cnt >= k && r == ?o || cnt < k && r == ?x)
      no = true
      break
    end
  end
  ans += 1 if !no
end
puts ans