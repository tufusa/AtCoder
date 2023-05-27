h, w, k = gets.split.map(&:to_i)
c = h.times.map{ gets.chomp.tr(".#", "01").chars.map(&:to_i) }
ans = 0
(0...2**h).each do |bith| #ビット全探索
    (0...2**w).each do |bitw|
        f = Marshal.load(Marshal.dump(c)) #ディープコピー
        (0...h).each do |y|
            (0...w).each do |x|
                if bith[y] == 1 || bitw[x] == 1
                    f[y][x] = 0
                end
            end
        end
        if f.flatten.sum == k
            ans += 1
        end
    end
end
puts ans