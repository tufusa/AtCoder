n = gets.to_i
a = 1
b = 1
ans = 0
while(1)
    while(1)
        ans += 1
        b += 1
        break if a * b >= n
    end
    b = 1
    a += 1
    break if a * b >= n
end
puts ans