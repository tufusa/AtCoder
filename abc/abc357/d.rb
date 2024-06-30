n = gets.to_i
l = n.to_s.size
mod = 998244353
def sol(n, l, dig, mod)
  return 1 if dig == 1
  return 0 if dig <= 0

  sum = 1
  d = 1
  i = 1
  while true
    break if 2 * d > dig

    sum += sum * 10.pow(d * l, mod)
    sum %= mod
    d *= 2
    i += 1
  end

  ans = (sum + sol(n, l, dig - d, mod) * 10.pow(d * l, mod)) % mod
  ans
end
puts (n * sol(n, l, n, mod)) % mod