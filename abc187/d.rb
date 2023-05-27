n = gets.to_i
dif = 0 #(高橋の得票数) - (青木の得票数), これが0を越えればよい
uv = []
n.times do
    a, b = gets.split.map(&:to_i)
    dif -= a
    uv.push(2 * a + b) #各町で演説をした時のdifの増分, (T + a + b) - (A - a) = T - A + 2 * a + b
end
uv.sort!.reverse! #増分が多い順に演説をする
ans = 0
while(1)
    break if dif > 0
    dif += uv[ans]
    ans += 1
end
puts ans