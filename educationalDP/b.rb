n, k = gets.split.map &:to_i
h = gets.split.map &:to_i
dp = Array.new n
dp[0] = 0
(1...n).each do |i|
  dp[i] = dp[i - 1] + (h[i - 1] - h[i]).abs
  (([0, i - k].max)...i).each do |from|
    dp[i] = [dp[from] + (h[i] - h[from]).abs, dp[i]].min
  end
end
puts dp[n - 1]