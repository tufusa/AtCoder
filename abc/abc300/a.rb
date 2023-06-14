ans = gets.split.map(&:to_i)[1, 2].sum
puts gets.split.map(&:to_i).index(ans) + 1