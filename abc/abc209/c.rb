n = gets.to_i
c = gets.split.map(&:to_i).sort
ans = 1
(0...n).each do |i|
    c[i] -= i
end
c.each do |num|
    ans = (ans * num) % (10**9 + 7)
end
puts ans