n = gets.to_i
qs = gets.split.map &:to_i
as = gets.split.map &:to_i
bs = gets.split.map &:to_i

ma = qs.zip(as).map{ _2 == 0 ? 10**6 : _1 / _2 }.min
res = []

(0..ma).each do |ca|
  qst = qs.map.with_index{|v, i| v - as[i] * ca }
  cb = qst.zip(bs).map{ _2 == 0 ? 10**6 : _1 / _2 }.min
  res << ca + cb
end

puts res.max