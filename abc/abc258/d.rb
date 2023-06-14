n, x = gets.split.map &:to_i
games = n.times.map{ gets.split.map &:to_i }
sum = [0]
games.each do |a, b|
    sum.push sum[-1] + a + b
end
minb = 10**10

ans = 10**19
(1..n).each do |i|
    if minb < games[i - 1][1]
        next
    else
        minb = games[i - 1][1]
    end
    ans = [ans, sum[i] + games[i - 1][1] * (x - i)].min
end
puts ans