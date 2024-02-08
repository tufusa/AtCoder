n = gets.to_i
rep = [1]
15.times { rep << rep[-1] * 10 + 1 }
ts = rep.repeated_combination(3).map(&:sum).uniq.sort
puts ts[n - 1]