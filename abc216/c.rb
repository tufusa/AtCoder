n = gets.to_i
ans = []
while(true)
    if n.even?
        n /= 2
        ans.push "B"
    else
        n -= 1
        ans.push "A"
    end
    break if n == 0
end
puts ans.join.reverse