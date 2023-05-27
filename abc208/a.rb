a, b = gets.split.map(&:to_i)
if (a..a*6) === b
    puts "Yes"
else
    puts "No"
end