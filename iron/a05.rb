n, k = gets.split.map &:to_i
puts (1..n).to_a.repeated_permutation(2).map{ (k - _1.sum).between?(1, n) ? 1 : 0 }.sum