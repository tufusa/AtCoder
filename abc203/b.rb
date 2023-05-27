n, k = gets.split.map(&:to_i)
ans = 0
for i in 1..n
    for j in 1..k
        ans += 100 * i + j
    end
end
puts ans