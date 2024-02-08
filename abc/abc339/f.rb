n = gets.to_i
as = n.times.map { gets.to_i }
h = as.tally
ks = h.keys.sort
max = ks.max
c = 0
ks.each do |i|
  ks.map do |j|
    v = i * j
    break if v > max
    c += h[i] * h[j] * (h[v] || 0)
  end
end
puts c