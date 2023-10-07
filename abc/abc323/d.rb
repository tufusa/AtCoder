n = gets.to_i
sls = n.times.map { gets.split.map &:to_i }.to_h
while true
  ch = false
  keys = sls.keys
  keys.each do |s|
    sl = sls[s]
    next if sl < 2

    sls[s] = sl[0]
    (1...(sl.bit_length)).each do |i|
      next if sl[i] == 0
      nx = s * 1 << i
      sls[nx] ||= 0
      sls[nx] += 1
    end
    ch = true
  end
  break if !ch
end
puts sls.sum { _1[1] }