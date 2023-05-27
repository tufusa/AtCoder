x = gets.chomp.chars
h = x.zip(("a".."z").to_a).to_h
n = gets.to_i
s = n.times.map{ c = gets.chomp; [c, c.chars.map{ h[_1] }.join] }.sort_by(&:last)
puts s.map(&:first)