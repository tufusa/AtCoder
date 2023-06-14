a, b = gets.split.map(&:to_i)
if a > b
    puts 0
else
    puts b - a + 1
end