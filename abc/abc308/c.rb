n = gets.to_i
abs = n.times.map{ gets.split.map &:to_i }
iss = abs.map.with_index{|ab, i| [i, Rational(ab[0], ab[0] + ab[1])] }
iss.sort_by!{ [-_1[1], _1[0]] }
puts iss.map{ _1[0] + 1 }.join ?\s