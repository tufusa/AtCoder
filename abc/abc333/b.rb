s1, s2 = gets.chomp.tr('A-E', '0-4').chars.map &:to_i
t1, t2 = gets.chomp.tr('A-E', '0-4').chars.map &:to_i
puts (s1 - s2).abs % 5 == (t1 - t2).abs % 5 || (s1 - s2).abs % 5 == 5 - (t1 - t2).abs % 5 ? 'Yes' : 'No'
