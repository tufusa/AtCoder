require 'set'
n = gets.to_i
ss = n.times.map { gets.chomp.bytes }
set = Set.new ss
ss.each do |s|
  next if not set.include? s

  rev = s.reverse
  next if s == rev

  set.delete rev
end
puts set.size