a, b, c = gets.split.map(&:to_i)
if c % 2 == 0
    if a.abs < b.abs
        puts "<"
    elsif a.abs > b.abs
        puts ">"
    else
        puts "="
    end
else
    if a == 0
        as = 1
    else
        as = a / a.abs
    end
    if b == 0
        bs = 1
    else
        bs = b / b.abs
    end
    if as * a.abs > bs * b.abs
        puts ">"
    elsif as * a.abs < bs * b.abs
        puts "<"
    else
        puts "="
    end
end