n = gets.to_i
as = gets.split.map &:to_i#
sqs = []
i = 0
msq = as.max ** 2
while true
  pr = i * i
  break if pr > msq
  sqs << pr
  i += 1
end
ls = {}
as.each do |a|
  aa = a
  sqs.each do |sq|
    next if sq == 0 || sq == 1
    break if aa < sq
    aa /= sq while aa >= sq && aa % sq == 0
  end
  ls[aa] ||= 0
  ls[aa] += 1
end
c = as.tally.tap{ _1.default = 0 }
puts ls.values.sum{ _1 * (_1 - 1) / 2 } + (c[0] > 0 ? (as.size - c[0]) * c[0] : 0)
