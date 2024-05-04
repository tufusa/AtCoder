s = gets.chomp
t = gets.chomp
sn = 0
ans = []
t.chars.each_with_index do |c, i|
  if c == s[sn]
    ans << i + 1
    sn += 1
  end
end
puts ans.join ?\s