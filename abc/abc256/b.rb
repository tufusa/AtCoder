n = gets.to_i
a = gets.split.map &:to_i
k = []
a.each do |i|
    k.push 0
    k.map!{ |j| j += i }
end
puts k.count{ |d| d >= 4 }