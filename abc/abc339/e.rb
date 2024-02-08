n, d = gets.split.map &:to_i#5*10**5, 5*10**5 #
as = gets.split.map &:to_i#n.times.map{ rand(5*10**5) } #
asn = as.max
dp = Array.new(n)
(0...n).each do |i|
  # p dp
  a = as[i]
  ms = [nil, nil]
  (0...i).reverse_each do |j|
    b = as[j]
    if a - d <= b && b <= a
      ms[0] = dp[j] if ms[0].nil? || ms[0] < dp[j]
    elsif a < b && b <= a + d
      ms[1] = dp[j] if ms[1].nil? || ms[1] < dp[j]
    end
    break if !ms[0].nil? && !ms[1].nil?
  end
  # p ms
  dp[i] = (ms.compact.max || 0) + 1
end

puts dp.max