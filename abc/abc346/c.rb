n, k = gets.split.map &:to_i
as = gets.split.map &:to_i
sum = k * (k + 1) / 2
sum -= as.uniq.reject{ _1 > k }.sum
puts sum
