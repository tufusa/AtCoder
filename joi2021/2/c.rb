h, w = gets.split.map(&:to_i)
map = h.times.map{ gets.split.map(&:to_i) }
sum = Array.new(h + 1){ Array.new(w + 1, 0) }
ans = 0
field = []
(1...2 ** (w - 1)).each do |b|
    s = 0
    for i in 0...w
        s += map[0][i]
        if i == w - 1 || b[i] == 1
            field.push s
            s = 0
        end
    end
    p b.to_s(2).rjust(3, "0").reverse
    p field
    if field.uniq.one? && b != 0
        ans += 1
    end
    field.clear
end
# (1..h).each do |i|
#     (1..w).each do |j|
#         sum[i][j] = sum[i][j - 1] + map[i - 1][j - 1]
#     end
# end
# (1..w).each do |j|
#     (1..h).each do |i|
#         sum[i][j] += sum[i - 1][j]
#     end
# end
# field = []
# (0...h).each do |i|
#     (1...h).to_a.combination(i).each do |ch|
#         ch.unshift(0)
#         ch.push(h)
#         (0...w).each do |j|
#             (1...w).to_a.combination(j).each do |cw|
#                 cw.unshift(0)
#                 cw.push(w)
#                 ch.each_cons(2) do |gh|
#                     cw.each_cons(2) do |gw|
#                         field.push sum[gh[1]][gw[1]] - sum[gh[1]][gw[0]] - sum[gh[0]][gw[1]] + sum[gh[0]][gw[0]]
#                     end
#                 end
#                 if field.uniq.one? && !(i == 0 && j == 0)
#                     ans += 1
#                 end
#                 field.clear
#             end
#         end
#     end
# end
puts ans