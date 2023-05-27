s = 3.times.map{ gets.chomp }
t = gets.chomp.chars.map{ _1.to_i - 1 }
ans = []
t.each do |i|
    ans.push(s[i])
end
puts ans.join