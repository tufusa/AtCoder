w, h = gets.split.map &:to_i
n = gets.to_i
ss = n.times.map{ gets.split.map &:to_i }
an = gets.to_i
as = gets.split.map &:to_i
bn = gets.to_i
bs = gets.split.map &:to_i
as.unshift(0).push(w)
bs.unshift(0).push(h)
cakes = {}
t = 10000000000
ss.each do |s|
  x, y = s
  ix = as.bsearch_index{ _1 > x } - 1
  iy = bs.bsearch_index{ _1 > y } - 1
  i = iy * t + ix
  cakes[i] ||= 0
  cakes[i] += 1
end
min, max = cakes.values.minmax
if cakes.size < (an + 1) * (bn + 1)
  min = 0
end
puts "#{min} #{max}"