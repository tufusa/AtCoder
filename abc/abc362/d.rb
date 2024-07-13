require 'ac-library-rb/priority_queue'
include AcLibraryRb

n, m = gets.split.map &:to_i
as = gets.split.map &:to_i
uvbs = m.times.map { gets.split.map &:to_i }
gs = Array.new(n) { [] }
uvbs.each {|u, v, b| gs[u - 1] << [v - 1, b + as[v - 1]]; gs[v - 1] << [u - 1, b + as[u - 1]] }
q = PriorityQueue.new { _1[1] < _2[1] }
seen = Array.new(n, nil)

gs[0].each { q << [_1[0], _1[1] + as[0]] }
rest = n
while true
  nx = q.pop
  next if seen[nx[0]]

  seen[nx[0]] = nx[1]
  gs[nx[0]].each{ q << [_1[0], _1[1] + nx[1]] }
  rest -= 1
  break if rest == 0
end

puts seen[1..].join ?\s
