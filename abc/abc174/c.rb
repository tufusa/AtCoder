k = gets.to_i
n = 7 % k
i = 1
while(i <= k)
    if n == 0
        puts i
        exit
    end
    n = (10 * n + 7) % k
    i += 1
end
puts -1