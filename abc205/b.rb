n = gets.to_i
a = gets.split.map(&:to_i)
if a.sort == (1..n).to_a
    puts "Yes"
else
    puts "No"
end