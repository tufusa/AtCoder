n = gets.to_i
as = gets.split.map &:to_i
puts as.tally.find { _2 == 1 }[0]