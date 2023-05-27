x, a, d, n = gets.split.map(&:to_i)
m = a + (n - 1) * d
if d > 0 
    if x >= m
        puts x - m
        exit
    elsif x < a
        puts a - x
        exit
    end
elsif d < 0
    if x <= m
        puts m - x
        exit
    elsif x > a
        puts x - a
        exit
    end
elsif d == 0
    puts (m - x).abs
    exit
end

pd = (x - a) / d * d
puts [pd - d - x + a, pd - x + a, pd + d - x + a].map(&:abs).min