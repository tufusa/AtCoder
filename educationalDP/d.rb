n, w = gets.split.map &:to_i
obj = n.times.map{ gets.split.map &:to_i }
dp = Array.new(n){ Array.new(w + 1, 0) }

w0, v0 = obj[0]
(0..w).each do |mw|
  dp[0][mw] = w0 <= mw ? v0 : 0
end

(1...n).each do |i|
  wi, vi = obj[i]
  (1..w).each do |mw|
    pre_mw = mw - wi
    dp[i][mw] = [pre_mw >= 0 ? dp[i - 1][pre_mw] + vi : 0, dp[i - 1][mw]].max
  end
end
puts dp[-1][-1]