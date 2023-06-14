a, b, k = gets.split.map(&:to_i)
fact = Array.new(a){ Array.new(b, 0).unshift(1) }.unshift(Array.new(b + 1, 1))
ans = []
(1..a).each do |i|
    (1..b).each do |j|
        fact[i][j] = fact[i - 1][j] + fact[i][j - 1]
    end
end
(1..(a + b)).each do
    if fact[a - 1][b] >= k && a > 0
        ans.push("a")
        a -= 1
    elsif b > 0
        ans.push("b")
        k -= fact[a - 1][b]
        b -= 1
    end
end
puts ans.join