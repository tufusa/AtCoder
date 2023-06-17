n = gets.to_i
dishes = n.times.map{ gets.split.map &:to_i }
dp = Array.new(n + 1){ [0, 0] }
dishes.each.with_index(1) do |d, i|
  x, y = d
  if x == 0
    dp[i][0] = [dp[i - 1][0], dp[i - 1][0] + y, dp[i - 1][1] + y].max
    dp[i][1] = dp[i - 1][1]
  else
    dp[i][0] = dp[i - 1][0]
    dp[i][1] = [dp[i - 1][0] + y, dp[i - 1][1]].max
  end
end
puts dp[-1].max