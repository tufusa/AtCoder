n = gets.to_i
a = gets.split.map(&:to_i)
ans = 0
now = 0
m = 0
(1...n).each{ |i| a[i] += a[i - 1] }
(0...n).each do |i|
    m = [m, a[i]].max
    ans = [ans, now + m].max
    now += a[i]
end
puts ans