a, b, d = gets.split.map &:to_i
res = []
while a != b
  res << a
  a += d
end
res << b
puts res.join(?\s)