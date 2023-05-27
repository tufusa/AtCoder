a, b, c, d = gets.split.map(&:to_i)
if c * d == b
    puts -1
    exit
end
ans = (a.to_f / (c * d - b)).ceil
puts ans > 0 ? ans : -1