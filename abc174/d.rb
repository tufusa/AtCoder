n = gets.to_i
c = gets.chomp.tr("WR", "01").chars.map(&:to_i)
ans = []
w = 0
r = c.count(1)
if r == 0
    puts 0
    exit
end
(0...n).each do |i|
    if c[i] == 0
        w += 1
    else
        r -= 1
    end
    ans.push([w, r].max)
end
puts ans.min