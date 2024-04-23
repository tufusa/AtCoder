n = gets.to_i
as = gets.split.map &:to_i
min, max = as.minmax
puts as.map { [_1 - min, max - _1].max }