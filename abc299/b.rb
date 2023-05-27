n, t = gets.split.map &:to_i
cs = gets.split.map &:to_i
rs = gets.split.map &:to_i

if !cs.include?(t)
  t = cs[0]
end

max_r = 0
winner = 0

(0...n).each do |i|
  if cs[i] == t && rs[i] > max_r
    max_r = rs[i]
    winner = i
  end
end

puts winner + 1