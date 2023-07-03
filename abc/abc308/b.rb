n, m = gets.split.map &:to_i
cs = gets.split
ds = gets.split
ps = gets.split.map &:to_i
prices = (0...m).map{ [ds[_1], ps[_1 + 1]] }.to_h
res = 0
cs.each do |c|
  res += (prices[c] || ps[0])
end
puts res