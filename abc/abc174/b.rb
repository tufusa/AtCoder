n, d = gets.split.map(&:to_i)
ans = 0
#入力を全部受け取ってから処理するより, 逐次処理できるときはしたほうが早い
(0...n).each do
    x, y = gets.split.map(&:to_i)
    ans += 1 if x * x + y * y <= d * d
end
puts ans