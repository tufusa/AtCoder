n = gets.to_i
xys = n.times.map { gets.split.map &:to_i }
puts xys.transpose.map(&:sum).then{ _1 < _2 ? 'Aoki' : _1 > _2 ? 'Takahashi' : 'Draw' }