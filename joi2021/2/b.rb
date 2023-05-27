H, W = gets.split.map(&:to_i)
$map = H.times.map{ gets.chomp.tr(".#", "01").chars.map(&:to_i) }
$ans = -1
$seen = Array.new(H){ Array.new(W, -1)}
def dfs(x, y, count, move)
    now = $map[y][x]
    if $seen[y][x] == -1
        $seen[y][x] = count
    end
    if $seen[y][x] >= count
        $seen[y][x] = count
    else
        return
    end
    if x == W - 1 && y == H - 1
        if $ans == -1 || $ans > count
            $ans = count
        end
    end
    if move != 3 && x < W - 1 && now != $map[y][x + 1]
        dfs(x + 1, y, count + 1, 1)
    end
    if move != 4 && y < H - 1 && now != $map[y + 1][x]
        dfs(x, y + 1, count + 1, 2)
    end
    if move != 1 && x > 0 && now != $map[y][x - 1]
        dfs(x - 1, y, count + 1, 3)
    end
    if move != 2 && y > 0 && now != $map[y - 1][x]
        dfs(x, y - 1, count + 1, 4)
    end
end
dfs(0, 0, 0, 0)
puts $ans