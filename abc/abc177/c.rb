n = gets.to_i
a = gets.split.map(&:to_i).reverse
m = 10 ** 9 + 7
sum = [0]
ans = 0
a.each{|num| sum.push((num + sum[-1]) % m) }
(0...n).each do |i|
    ans += (a[i] * sum[i]) % m
end
puts ans % m