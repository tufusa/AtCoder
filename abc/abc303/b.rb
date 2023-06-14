n, m = gets.split.map &:to_i
as = m.times.map{ gets.split.map{ _1.to_i - 1 } }

cord = Array.new(n){ Array.new(n, false) }
n.times{ cord[_1][_1] = true }

as.each do |a|
  a.each_cons(2) do |x, y|
    cord[x][y] = cord[y][x] = true
  end
end

count = 0

n.times do |y|
  n.times do |x|
    next if cord[y][x]

    count += 1
    cord[x][y] = true
  end
end

puts count