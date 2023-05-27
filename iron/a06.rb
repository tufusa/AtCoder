n, q = gets.split.map &:to_i
a = gets.split.map &:to_i
qs = q.times.map{ gets.split.map &:to_i }
sum = a.inject([0]){|s, v| s << s[-1] + v }
puts qs.map{|l, r| sum[r] - sum[l - 1]}