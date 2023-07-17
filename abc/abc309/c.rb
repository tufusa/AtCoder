n, k = gets.split.map &:to_i
abs = n.times.map { gets.split.map &:to_i }
mh = {}
abs.each {|a, b| mh[a] = (mh[a] || 0) + b }
meds = mh.to_a.sort
m = meds.sum &:last
puts(1).then { exit } if m <= k
while med = meds.shift
  m -= med[1]
  next if m > k

  puts med[0] + 1
  exit
end