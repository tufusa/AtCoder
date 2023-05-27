s = gets.chomp.chars
n = s.size
ch = "chokuda".chars
m = 10 ** 9 + 7
stat = Array.new(n, 0)
(0...n).each do |i|
    if s[i] == "i"
        stat[i] += 1
    end
end
(0..6).reverse_each do |i|
    sum = [0]
    stat.each do |v|
        sum.push((sum[-1] + v) % m)
    end
    stat.fill(0)
    (0...n).each do |j|
        if s[j] == ch[i]
            stat[j] = sum[n] - sum[j]
        end
    end
end
puts stat.sum % m