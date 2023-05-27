a, b = gets.split.map(&:to_i)
if b == 0
    puts "Gold"
elsif a == 0
    puts "Silver"
else
    puts "Alloy"
end