n = gets.to_i
name = n.times.map{ gets.chomp }
if name.size != name.uniq.size
    puts "Yes"
else
    puts "No"
end