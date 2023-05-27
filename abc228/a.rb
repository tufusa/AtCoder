s, t, x = gets.split.map(&:to_i)
t += 24 if t < s
if (s...t).include?(x) || (s...t).include?(x + 24)
    puts "Yes"
else
    puts "No"
end