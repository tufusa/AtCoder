n = gets.to_i
as = gets.split.map { [_1.to_i, _1.chomp.size] }
sum = 0
d = 10**(as[-1][1])
psum = as[-1][0]
mod = 998244353
(0...(n - 1)).reverse_each do |i|
  sum += d * as[i][0] + psum
  sum %= mod
  d += 10**(as[i][1])
  psum += as[i][0]
end
puts sum