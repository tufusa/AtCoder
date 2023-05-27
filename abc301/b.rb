n = gets.to_i
a = gets.split.map &:to_i
ans = []
a.each_cons(2) do |i, j|
  ans << i
  bet = i < j ? ((i + 1)..(j - 1)).to_a : ((j + 1)..(i - 1)).to_a.reverse
  ans.concat bet
end
ans << a[-1]
puts ans.map(&:to_s).join ?\s