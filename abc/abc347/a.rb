n, k = gets.split.map &:to_i
as = gets.split.map &:to_i
puts as.filter{ _1 % k == 0 }.map{ _1 / k }.join(?\s)