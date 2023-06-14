n = gets.to_i
a = gets.split.map(&:to_i)
ans = 0
i = 1
while(1)
    while(1)
        if a[0] == i
            a.shift
            break
        else
            break if not a.shift
            ans += 1
        end
    end
    i += 1
    break if a.size == 0
end
puts (ans == n) ? -1 : ans