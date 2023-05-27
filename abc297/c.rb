h, w = gets.split.map &:to_i
s = h.times.map{ gets.chomp }
puts s.map{ _1.gsub(/TT/, 'PC') }.join(?\n)