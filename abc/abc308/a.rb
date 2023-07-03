ss = gets.split.map &:to_i
puts('No').then{ exit } if !ss.each_cons(2).all?{ _1 <= _2 }
puts('No').then{ exit } if !ss.all?{ 100 <= _1 && _1 <= 675 }
puts('No').then{ exit } if !ss.all?{ _1 % 25 == 0 }
puts 'Yes'
