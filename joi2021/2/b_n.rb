H, W = gets.split.map(&:to_i)
map = H.times.map{ gets.chomp.tr(".#", "01").chars.map(&:to_i) }
seen = Array.new(H){ Array.new(W, -1) }
seen[0][0] = 0
que = [[0, 0]] # x, y
dir = [[1, 0], [0, 1], [-1, 0], [0, -1]] # x, y
step = 0
while not que[step].nil?
    x, y, t = que[step]
    step += 1
    if x == W - 1 && y == H - 1
        break
    end
    nownum = map[y][x]
    dir.each do |dx, dy|
        if x + dx < 0 || x + dx >= W || y + dy < 0 || y + dy >= H
            next
        end
        if nownum != map[y + dy][x + dx] && seen[y + dy][x + dx] == -1
            que.push [x + dx, y + dy]
            seen[y + dy][x + dx] = seen[y][x] + 1 #キューに入れた時点でseenを更新 キューの中身を重複させない
        end
    end
end
puts seen[H - 1][W - 1]