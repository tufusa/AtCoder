s = gets.chomp
puts (s.chars.tally.to_a.group_by{ _1[1] }.map{ _2.size }.all? { _1 == 2} ? 'Yes' : 'No')