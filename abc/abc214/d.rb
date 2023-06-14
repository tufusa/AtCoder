n = gets.to_i
map = Array.new(n){[]}
(n - 1).times do
    u, v, w = gets.split.map(&:to_i)
    map[u - 1].push [v - 1, w]
    map[v - 1].push [u - 1, w]
end
max = Array.new(n){Array.new(n, -1)}
ans = 0
(0...n).each do |f|
    max[f][f] = 0
    que = [f]
    while(!que.empty?)
        now = que.shift
        map[now].each do |arr|
            if max[f][arr[0]] == -1
                max[f][arr[0]] = [arr[1], max[f][now]].max
                ans += max[f][arr[0]] if max[arr[0]][f] == -1
                que.push arr[0]
            end
        end
    end
end
puts ans