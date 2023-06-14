s = 4.times.map{ gets.chomp }
if ["H", "2B", "3B", "HR"] - s == []
    puts "Yes"
else
    puts "No"
end