gets; print [0].push(*gets.split.map(&:to_i)).each_cons(2).map{ _2 - _1 }.map(&:to_i).join ' '