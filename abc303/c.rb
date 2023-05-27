require 'set'

n, m, h, k = gets.split.map &:to_i
s = gets.chomp.chars
items = Set.new(m.times.map{ gets.split.map &:to_i })
pos = [0, 0]

n.times do |i|
  h -= 1
  if h < 0
    puts 'No'
    exit
  end

  case s[i]
  when 'R' then pos[0] += 1
  when 'L' then pos[0] -= 1
  when 'U' then pos[1] += 1
  when 'D' then pos[1] -= 1
  end

  if h < k && items.include?(pos)
    h = k
    items.delete pos
  end
end

puts 'Yes'
