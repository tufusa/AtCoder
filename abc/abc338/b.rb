s = gets.chomp.chars
ts = s.tally
puts s.uniq.group_by { ts[_1] }.to_a.sort_by{ -_1[0] }[0][1].sort[0]