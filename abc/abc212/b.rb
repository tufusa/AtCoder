x = gets.chomp.chars.map(&:to_i)
if x.uniq.one?
    puts "Weak"
    exit
end
for i in 0..2
    if (x[i + 1] - x[i]) % 10 != 1
        puts "Strong"
        exit
    end
end
puts "Weak"
exit