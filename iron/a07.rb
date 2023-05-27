d = gets.to_i
n = gets.to_i
sch = n.times.map{ gets.split.map &:to_i }
dif = Array.new(d + 1, 0)
sch.each{|i, o| dif[i - 1] += 1; dif[o] -= 1 }
puts dif.inject([]){|r, v| r << (r[-1] || 0) + v }.tap{ _1.delete_at -1 }