n, k = gets.split.map(&:to_i)
peo = gets.split.map(&:to_i)
a = []
con = k / n
(0...n).each do |i|
    a.push([i, peo[i], con])
end
a = a.sort_by{ |e| e[1] }
(0..((k % n) - 1)).each do |i|
    a[i][2] += 1
end
puts a.sort_by{ |e| e[0] }.map{ |e| e[2] }