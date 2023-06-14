n = gets.to_i
a = gets.split.map(&:to_i)
ans = 0
max = a[0]
a.each do |t|
    max = t if t > max
    ans += max - t
end
puts ans