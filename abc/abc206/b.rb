n = gets.to_i
ans = ((2 * n) ** 0.5).floor
while(1)
    break if ans * (ans + 1) >= 2 * n
    ans += 1
end
puts ans