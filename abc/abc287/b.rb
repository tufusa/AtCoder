n, m = gets.split.map &:to_i
s = n.times.map{ gets.chomp[3..5].to_sym }
t = m.times.map{ [gets.chomp.to_sym, true] }.to_h
puts s.map{ t[_1] ? 1 : 0 }.sum