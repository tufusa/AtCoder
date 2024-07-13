n = gets.to_i
as = gets.split.map &:to_i
mod = 998244353
memo = Array.new(n) { Array.new(n) { {} } }
ds = Array.new(n) { {} }
n.times do |i|
  ((i + 1)...n).each do |j|
    d = as[j] - as[i]
    (ds[i][d] ||= []) << j
  end
end

def count(now, ds, d, k, memo, mod)
  return memo[now][k - 1][d] if memo[now][k - 1][d]
  return memo[now][k - 1][d] = 1 if k == 1

  sum = 0
  ds[now][d]&.each do |nx|
    sum += count nx, ds, d, k - 1, memo, mod
  end
  memo[now][k - 1][d] = sum
  sum % mod
end

ans = [as.size]

(2..n).each do |k|
  ans << (0...n).sum do |now|
    ds[now].keys.sum do |d|
      count(now, ds, d, k, memo, mod)
    end % mod
  end % mod
end

puts ans * ?\s
