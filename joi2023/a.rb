n = gets.to_i
a = gets.split.map &:to_i
minmax = a.minmax
puts a.map{ [(_1 - minmax[0]).abs, (_1 - minmax[1]).abs].max }