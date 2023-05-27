str = gets.chomp
s = str.tr(".X", "01").chars.map(&:to_i)
k = gets.to_i
count = 0
left = 0
right = -1
ans = 0
size = s.size - 1
flag = false
if k == 0
    puts str.split(".").map(&:size).max.to_i
elsif s.count(0) <= k
    puts size + 1
else
    while true
        while true
            right += 1
            count += 1 if s[right] == 0
            if right == size && s[right] == 1
                right += 1
                flag = true
                break
            end
            break if count == k + 1 || right == size
        end
        ans = [ans, right - left].max
        while true
            left += 1
            break if s[left - 1] == 0 || left == size
        end
        count -= 1
        break if flag || right == size
    end
    puts ans
end