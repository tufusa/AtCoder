h, w = gets.split.map &:to_i
s, t = 2.times.map{ h.times.map{ gets.chomp.chars }.transpose.map{ _1.join.to_sym }.tally }
puts s == t ? 'Yes' : 'No'