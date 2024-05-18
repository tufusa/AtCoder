n = gets.to_i
acs = n.times.map { [*gets.split.map(&:to_i), _1] }
       .group_by { _1[0] }
       .transform_values {|c| c.map{ [_1[1], _1[2]] }.sort_by{ _1[0] } }
       .sort_by{ -_1[0] }
       .map { _1[1] }
cards = [*acs[0].map{ _1[1] }]
min = acs[0][-1][0]
(1...n).each do |ai|
  gr = acs[ai]
  tmin = min
  gr.each do |c, i|
    next if c > min

    cards << i
    tmin = c if c < tmin
  end
  min = tmin
end
puts cards.map{ _1 + 1 }.sort.tap{ puts _1.size }.join ?\s