n, m = gets.split.map &:to_i
paths = Array.new(n){ [] }
m.times{ gets.split.map(&:to_i).tap{ paths[_1 - 1] << _2; paths[_2 - 1] << _1 } }
