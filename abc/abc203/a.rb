a, b, c = gets.split.map(&:to_i)

if !(a == b || b == c || c == a)
    puts 0
elsif (a == b)
    puts c
elsif (b == c)
    puts a
elsif (c == a)
    puts b
end