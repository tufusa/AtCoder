n = gets.to_f
x = n.floor
y = (10 * (n - x)).floor
print x
if y <= 2
    puts "-"
elsif y <= 6
elsif y <= 9
    puts "+"
end