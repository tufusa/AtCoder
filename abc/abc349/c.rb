s = gets.chomp + 'x'
t = gets.chomp.chars
puts (s =~ /#{t[0]}.*#{t[1]}.*#{t[2]}/i ? 'Yes' : 'No')