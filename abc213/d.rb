n = gets.to_i
map = Array.new(n){[]}
ans = [1]
visit = Array.new(n, false)
visit[0] = true
bef = [0]
(n - 1).times do
    a, b = gets.split.map(&:to_i)
    map[a - 1].push(b - 1)
    map[b - 1].push(a - 1)
end
map = map.map(&:sort)
now = 0
while(1)
    move = false
    map[now].each do |i|
        if not visit[i]
            bef.push now
            now = i
            move = true
            visit[i] = true
            break
        end
    end
    if !move
        if now == 0
            break
        end
        now = bef.pop
        map[now].shift
    end
    ans.push(now + 1)
end
puts ans.map(&:to_s).join(" ")