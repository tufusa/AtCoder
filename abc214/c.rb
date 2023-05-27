n = gets.to_i
s = gets.split.map(&:to_i)
t = gets.split.map(&:to_i)
time = []
ans = Array.new(n)
(0...n).each do |i|
    time.push [i, t[i]]
end
now = time.sort_by(&:last)[0][0]
ans[now] = t[now]
(1...n).each do
    now = (now + 1) % n
    ans[now] = [ans[now - 1] + s[now - 1], t[now]].compact.min
end
puts ans