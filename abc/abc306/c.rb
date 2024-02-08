n = gets.to_i
as = gets.split.map &:to_i
seen = Array.new(n, 0)
f1 = Array.new(n)
as.each_with_index do |a, i|
  seen[a - 1] += 1
  f1[a - 1] = [i, a] if seen[a - 1] == 2
end
puts f1.sort_by{ _1[0] }.map{ _1[1] }.join ?\s