n = gets.to_i
scs = n.times.map { gets.split.then{ [_1[0], _1[1].to_i] } }
t = scs.map{ _1[1] }.sum
scs.sort_by!{ _1[0] }
puts scs[t % n][0]