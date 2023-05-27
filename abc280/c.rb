s = gets.chomp.bytes << -1
t = gets.chomp.bytes
puts s.zip(t).each_with_index{ |pair, i| break i + 1 if pair[0] != pair[1] }