n, s, k = gets.split.map(&:to_i)
prs = n.times.map { gets.split.map(&:to_i) }
ans = prs.map { _1 * _2 }.sum
puts (ans + (ans >= s ? 0 : k))