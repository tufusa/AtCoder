h1, h2, h3, w1, w2, w3 = gets.split.map(&:to_i)
pp = 0
for a in 1..([h1, w1].min - 2)
    for b in 1..([h1 - a, w2 - 1].min - 1)
        c = h1 - a - b
        for d in 1..([w1 - a, h2 - 1].min - 1)
            g = w1 - a - d
            for e in 1..([w2 - b, h2 - d].min - 1)
                f = h2 - d - e
                h = w2 - b - e
                next if 0 >= i = w3 - c - f
                if g + h + i == h3
                    pp += 1
                end
            end
        end
    end
end
p pp