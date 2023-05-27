n, k = gets.split.map(&:to_i)
t = n.times.map{ gets.split.map(&:to_i) }
ans = 0
(1...n).to_a.permutation do |per|
    per.unshift(0).push(0)
    time = 0
    per.each_cons(2) do |a, b|
        time += t[a][b]
    end
    ans += 1 if time == k
end
puts ans