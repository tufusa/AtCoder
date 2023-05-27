n, m = gets.split.map &:to_i
s = n.times.map{ gets.chomp.tr('ox', '10').chars.map &:to_i }
res = 0
(0...n).to_a.combination(2) do |com|
    can = true
    (0...m).each do |i|
        break can = false unless s[com[0]][i] == 1 || s[com[1]][i] == 1
    end
    res += 1 if can
end
puts res