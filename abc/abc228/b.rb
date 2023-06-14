n, x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
now = x - 1
count = 1
know = Array.new(n, false)
know[now] = true
while(true)
    now = a[now] - 1
    if not know[now]
        know[now] = true
        count += 1
    else
        break
    end
end
puts count