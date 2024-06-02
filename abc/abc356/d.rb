n, m = gets.split.map &:to_i
if n == 0 || m == 0
  puts 0
  exit
end

d = (Math.log2 n).ceil
ans = 0
mod = 998244353
cn = 1
bi = 2
(0..d).each do |i|
  if m[i] == 1
    ans += ((n + 1) / bi * cn) % mod
    ans += [0, (n + 1) % bi - cn].max
    ans %= mod
  end
  cn *= 2
  bi *= 2
end
puts ans