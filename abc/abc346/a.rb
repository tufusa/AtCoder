gets
puts gets.split.map(&:to_i).each_cons(2).map{ _1 * _2 }.join ?\s