n, x = gets.split.map &:to_i
ts = gets.split.map &:to_i
dp = Array.new(x + 1, 0).tap{ _1[0] = 1 }
m = 998244353

def inv_mod(x, m)
  z = _inv_gcd(x, m)
  raise ArgumentError unless z.first == 1

  z[1]
end

def _inv_gcd(a, b)
  a %= b

  s, t = b, a
  m0, m1 = 0, 1

  while t > 0
    u = s / t
    s -= t * u
    m0 -= m1 * u

    s, t = t, s
    m0, m1 = m1, m0
  end

  m0 += b / s if m0 < 0
  [s, m0]
end

def mod(rat, m)
  rat.numerator * inv_mod(rat.denominator, m) % m
end

u = Rational(1, n)
(1..x).each do |i|
  v = ts.map do |t|
    prev = i - t
    prev >= 0 ? dp[prev] : 0
  end.sum * u
  dp[i] = mod v, m
end

puts mod((dp[(x - ts[0] + 1)..x]&.sum || 1) * u, m)