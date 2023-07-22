n, k = gets.split.map &:to_i
as = gets.split.map &:to_i
ps = [0]
k.times do
  ps << as.map do |a|
    th = ps[-1] - a
    i = ps.bsearch_index { _1 > th }
    ps[i] + a
  end.min
end
puts ps[-1]