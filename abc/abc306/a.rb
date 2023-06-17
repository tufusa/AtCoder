n = gets.to_i
s = gets.chomp.chars
puts s.zip(s).map(&:join).join