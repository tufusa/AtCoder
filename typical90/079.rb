h, w = gets.split.map(&:to_i)
a = h.times.map{ gets.split.map(&:to_i) }
b = h.times.map{ gets.split.map(&:to_i) }
dif = a.zip(b).map{ |ca, cb| ca.zip(cb).map{ |na, nb| nb - na } }
puts dif.map{ _1.map(&:to_s).join(" ") }.join("\n")