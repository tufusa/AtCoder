n = gets.to_i
a = n.times.map{ gets.split.map(&:to_i) }
m = gets.to_i
xy = m.times.map{ gets.split.map(&:to_i) }
ans = []
(1..n).to_a.permutation(n) do |per|
    t = 0
    flag = 0
    per.each_index do |i|
        t += a[per[i] - 1][i]
        if i < n - 1 and xy.include?([per[i], per[i + 1]].sort)
            flag = 1
            break
        end
    end
    if flag == 0
        ans.push(t)
    end
end
puts (ans.size == 0) ? (-1) : (ans.min)