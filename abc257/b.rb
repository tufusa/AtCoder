n, k, q = gets.split.map &:to_i
a = gets.split.map &:to_i
l = gets.split.map{ _1.to_i - 1 }
(0...q).each do |i|
    next if a[l[i]] == n || a[l[i]] + 1 == a[l[i] + 1]
    a[l[i]] += 1

end
puts a.map(&:to_s).join(" ")