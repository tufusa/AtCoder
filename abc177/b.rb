s = gets.chomp.bytes
t = gets.chomp.bytes
ans = 1000
ss = s.size
ts = t.size
(0...(ss - ts + 1)).each do |i|
    res = t.zip(s[i, ts]).count{ |x, y| x != y }
    ans = res if res < ans
    break if ans == 0
end
puts ans