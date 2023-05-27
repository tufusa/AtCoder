qn = gets.to_i
qs = qn.times.map{ gets.split.map &:to_i }
sl = [1]
r = 1
res = []
d = 0
mod = 998244353
qs.each do |q|
  if q[0] == 1
    sl << q[1]
    r = (r * 10 + q[1]) % mod
    d += 1
  elsif q[0] == 2
    next if not sl[0]
    r = (r - sl[0] * 10.pow(d, mod)) % mod # べき乗には注意 出来るだけ**は使わない modが指定可能なら必ずする
    d -= 1
    sl.shift
  else
    res << r
  end
end
puts res