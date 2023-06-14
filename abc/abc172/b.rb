s = gets.chomp.bytes
t = gets.chomp.bytes
puts s.zip(t).count{|x, y| x != y}