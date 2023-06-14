n, t = gets.split.map &:to_i
a = gets.split.map &:to_i
sum = a.inject([0]){|s, v| s << s[-1] + v }
t %= sum[-1]
idx = sum.bsearch_index{|v| v > t }
puts "#{idx} #{a[idx - 1] - (sum[idx] - t)}"