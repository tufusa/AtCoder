q = gets.to_i
qs = q.times.map { gets.split.map &:to_i }
a = []
res = []
qs.each do |f, v|
  if f == 1
    a << v
  else
    res << a[-v]
  end
end
puts res