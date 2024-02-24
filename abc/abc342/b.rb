n = gets.to_i
ps = gets.split.map &:to_i
q = gets.to_i
abs = q.times.map { gets.split.map &:to_i }
l = ps.map.with_index{ [_1, _2] }.sort_by{ _1[0] }.map{ _1[1] }
ans = []
abs.each do |a, b|
  if l[a - 1] < l[b - 1]
    ans << a
  else
    ans << b
  end
end
puts ans