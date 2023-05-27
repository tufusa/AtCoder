n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)
am = Array.new(46, 0)
bm = Array.new(46, 0)
cm = Array.new(46, 0)
a.each{ |i| am[i % 46] += 1 }
b.each{ |i| bm[i % 46] += 1 }
c.each{ |i| cm[i % 46] += 1 }
ans = 0
(0...46).to_a.repeated_permutation(3) do |i, j, k|
    if (i + j + k) % 46 == 0
        ans += am[i] * bm[j] * cm[k]
    end
end
puts ans