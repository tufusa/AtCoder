n = gets.to_i
s = gets.chomp.chars.map &:to_i
w = gets.split.map(&:to_i)
ps = []
(0...n).each do |i|
    ps.push [s[i], w[i]]
end
ps.sort_by! &:last

adl = [0]
chi = [0]
(0...n).each do |i|
    adl.push adl[-1] + (ps[i][0] == 1 ? 1 : 0)
    chi.push chi[-1] + (ps[i][0] == 0 ? 1 : 0)
end

b = -1
res = 0
(0..n).each do |i|
    next if i < n && b == ps[i][1]
    res = [res, chi[i] - chi[0] + adl[n] - adl[i]].max
    b = ps[i][1] if i < n
end
puts res