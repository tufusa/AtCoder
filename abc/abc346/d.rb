n = gets.to_i
s = gets.chomp.chars.map &:to_i
cs = gets.split.map &:to_i

lze = s.map.with_index { |v, i| v[0] != i % 2 ? cs[i] : 0 }
lon = s.map.with_index { |v, i| v[0] == i % 2 ? cs[i] : 0 }
lzesum = [0]
lonsum = [0]
lze.each { lzesum << lzesum[-1] + _1 }
lon.each { lonsum << lonsum[-1] + _1 }
sum = [lzesum, lonsum]
min = 10**20

[0, 1].each do |le|
  nle = (le + 1) % 2
  (0...(n - 1)).each do |sa|
    cost = sum[le][sa + 1] - sum[le][0] + sum[nle][-1] - sum[nle][sa + 1]
    min = cost if min > cost
  end
end

puts min
