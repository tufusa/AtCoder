n, m = gets.split.map &:to_i
s = gets.chomp
ds = s.split ?0
if ds.size == 0
  puts 0
  exit
end
ans = ds.map { _1.count ?2 }.max
long = ds.max_by(&:size).size
ans += long - (ans + m) if ans + m < long
puts ans