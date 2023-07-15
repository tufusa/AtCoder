require 'set'
n, m = gets.split.map &:to_i
ps = n.times.map { gets.split.map(&:to_i).then{ [_1[0], _1[1], Set.new(_1[2..])]} }
(0...n).to_a.permutation(2) do |i, j|
  next unless ps[i][0] >= ps[j][0]
  next unless ps[i][2].subset? ps[j][2]
  next unless ps[i][0] > ps[j][0] || ps[i][1] < ps[j][1]

  puts 'Yes'
  exit
end
puts 'No'