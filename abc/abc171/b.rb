n, k = gets.split.map(&:to_i)
price = gets.split.map(&:to_i).sort
puts price[0...k].sum