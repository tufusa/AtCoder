n = gets.to_i
s = gets.chomp
if s.count(?o) > 0 && s.count(?x) == 0
  puts "Yes"
else
  puts "No"
end