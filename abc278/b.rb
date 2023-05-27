h, m = gets.split
a, b = h.rjust(2).chars.map &:to_i
c, d = m.rjust(2).chars.map &:to_i
while true
    break if a * 10 + c < 24 && b * 10 + d < 60
    d += 1
    if d == 10
        d = 0
        c += 1
    end
    if c == 6
        c = 0
        b += 1
    end
    if b == 10
        b = 0
        a += 1
    end
    if a == 2 && b == 4
        a = b = 0
    end
end
puts "#{a}#{b} #{c}#{d}"