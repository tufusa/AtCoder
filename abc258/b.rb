n = gets.to_i
a = n.times.map{ gets.chomp.chars }
move = [[0, 1], [0, -1], [1, 0], [-1, 0], [1, 1], [1, -1], [-1, 1], [-1, -1]]
res = []
nums = []
(0...n).each do |i|
    (0...n).each do |j|
        x = i
        y = j
        move.each do |dx, dy|
            res.clear
            (0...n).each do
                res.push a[y][x]
                x = (x + dx) % n
                y = (y + dy) % n
            end
            nums.push res.join.to_i
        end
    end
end
p nums.max