n = gets.to_i
td = n.times.map { gets.split.map &:to_i }
evs = {}
td.each do |t, d|
  evs[t] ||= 0
  evs[t + d] ||= 0
  evs[t] += 1
  evs[t + d] -= 1
end
p evs
