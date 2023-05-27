n, pp, q, r, s = gets.split.map &:to_i
a = gets.split.map &:to_i
a[(pp - 1)...q], a[(r - 1)...s] = a[(r - 1)...s], a[(pp - 1)...q]
puts a.map(&:to_s).join ' '
