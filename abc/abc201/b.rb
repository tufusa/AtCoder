n = gets.to_i
s = []
t = []
m = (0...n).each do |i|
    g = gets.split
    s << g[0]
    t << g[1].to_i
end
f = t.sort.reverse[1]
puts s[ t.index{|x| x == f} ]