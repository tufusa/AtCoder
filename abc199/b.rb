gets
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
if b.min - a.max + 1 > 0
    puts b.min - a.max + 1
else
    puts 0
end