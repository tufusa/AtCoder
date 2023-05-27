n = gets.to_i
happy = n.times.map{ gets.split.map &:to_i }
dp = Array.new(n){ Array.new(3) }
dp[0] = happy[0]
(1...n).each do |i|
  (0..2).each do |act|
    prev = dp[i - 1].dup
    prev[act] = 0 # 今日やることと被るので0にする(maxとるので必ず実質除外)
    dp[i][act] = prev.max + happy[i][act]
  end
end
puts dp[-1].max