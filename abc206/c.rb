n = gets.to_i
a = gets.split.map(&:to_i).sort.slice_when{|x, y| x != y}
ans = 0
nok = n
a.each do |e|
    break if nok == 1
    s = e.size
    ans += (nok - 1 - (s - 1)) * s
    nok -= s
end
puts ans