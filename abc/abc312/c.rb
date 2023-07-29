n, m = gets.split.map &:to_i
as = gets.split.map(&:to_i).sort
bs = gets.split.map{ _1.to_i + 1 }.sort
abs = (as + bs).sort.uniq
base = abs.map{ [_1, 0] }.to_h
at = base.merge(as.tally).map{ _1[1] }
bt = base.merge(bs.tally).map{ _1[1] }
ats = [0]
bts = [m]
at.each{|a| ats << ats[-1] + a }
bt.each{|b| bts << bts[-1] - b }
i = (0..(abs.size)).to_a.bsearch_index{ ats[_1] >= bts[_1] } - 1
puts base.to_a[i][0]