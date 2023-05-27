m = 10 ** 9 + 7
n = gets.to_i
a = n.times.map{ gets.split.map(&:to_i).sum }
ans = 1
a.each do |n|
    ans = (ans * n) % m
end
puts ans