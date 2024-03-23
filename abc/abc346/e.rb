h, w, m = gets.split.map &:to_i
qs = m.times.map { gets.split.map(&:to_i).then{ [_1[0] - 1, _1[1] - 1, _1[2]] } }.reverse
alr = [{}, {}]
ch, cw = h, w
res = {}.tap{ _1.default = 0 }

qs.each do |t, a, c|
  next if alr[t][a]

  alr[t][a] = true
  if t == 0
    res[c] += cw
    ch -= 1
  else
    res[c] += ch
    cw -= 1
  end
end

res[0] += ch * cw
puts res.sort_by{ _1 }.reject{ _2 == 0 }.map{ _1.join ?\s }.tap{ puts _1.size }
