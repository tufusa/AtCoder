n = gets.to_i
a = gets.split.map(&:to_i)
ans = 0
for i in 0...n
    if a[i] > 10
        ans += a[i] - 10
    end
end
puts ans