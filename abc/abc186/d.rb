n = gets.to_i
a = gets.split.map(&:to_i).sort
sum = [0]
ans = 0
a.each do |num|
    sum.push(sum[-1] + num)
end
(0...(n - 1)).each do |i|
    ans += sum[n] - sum[i] - (n - i) * a[i]
end
puts ans