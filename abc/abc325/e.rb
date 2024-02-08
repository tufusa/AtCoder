n, a, b, c = gets.split.map &:to_i
ds = n.times.map { gets.split.map &:to_i }

ma = Array.new(n, 10**10).tap{ _1[i] = 0 }
mb = Array.new(n, 10**10).tap{ _1[i] = 0 }
sa = Array.new(n, 0).tap{ _1[0] = 1 }
sb = Array.new(n, 0).tap{ _1[-1] = 1 }
p sa
sa.each_with_index do |f1, fr|
  next if f1 == 0 || f1 == 2

  ch = false
  sa.each_with_index do |f2, to|
    next if f2 != 0 || fr == to

    d = ma[0][fr] + ds[fr][to] * a
    if d < ma[0][to]
      ma[0][to] = d
      ch = true
    end
  end
end

p ma