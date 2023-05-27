n = gets.to_i
s = gets.chomp.chars
if s.index("1") % 2 == 0
    puts "Takahashi"
else
    puts "Aoki"
end