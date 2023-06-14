x, y, z = gets.split.map &:to_i
s = gets.chomp.chars
n = s.size
dp = Array.new(n){ [0, 0] }

if s[0] == 'a'
  dp[0][0] = x
  dp[0][1] = z + y
else
  dp[0][0] = y
  dp[0][1] = z + x
end

(1...n).each do |i|
  if s[i] == 'a'
    dp[i][0] = [dp[i - 1][0] + x, dp[i - 1][1] + z + x].min
    dp[i][1] = [dp[i - 1][1] + y, dp[i - 1][0] + z + y].min
  else
    dp[i][0] = [dp[i - 1][0] + y, dp[i - 1][1] + z + y].min
    dp[i][1] = [dp[i - 1][1] + x, dp[i - 1][0] + z + x].min
  end
end

puts dp[-1].min