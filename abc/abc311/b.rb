n, d = gets.split.map &:to_i
ss = n.times.map{ gets.chomp.tr('ox', '01').chars.map &:to_i }
sc = Array.new(d)
(0...d).each do |i|
  sc[i] = ss.sum { _1[i] }
end
puts sc.chunk_while{|b, a| b == 0 && a == 0 }.filter{ _1[0] == 0 }.max_by(&:size)&.size || 0