s = gets.chomp
c = s.chars.tally.select{ _2 == 1 }.keys[0]
puts s.chars.find_index(c) + 1