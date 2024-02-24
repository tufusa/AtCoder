require 'set'

n = gets.to_i
s = gets.chomp
q = gets.to_i
cds = q.times.map { gets.split }
rep = (?a..?z).to_h{ [_1, _1] }
frm = (?a..?z).to_h{ [_1, Set[_1]] }
cds.each do |c, d|
  next if c == d

  frm[c].each do |f|
    rep[f] = d
    frm[d] << f
  end
  frm[c].clear
end
puts s.chars.map{ rep[_1] }.join
