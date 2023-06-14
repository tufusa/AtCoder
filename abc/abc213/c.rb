h, w, n = gets.split.map(&:to_i)
a = []
b = []
x = []
y = []
xx = {}
yy = {}
ans = []
(0...n).each do |i|
    ai, bi = gets.split.map(&:to_i)
    a.push ai
    b.push bi
end
x = a.clone.uniq.sort
y = b.clone.uniq.sort
i = 1
x.each do |xi|
    xx[xi] = i
    i += 1
end
i = 1
y.each do |yi|
    yy[yi] = i
    i += 1
end
(0...n).each do |i|
    ans.push "#{xx[a[i]]} #{yy[b[i]]}"
end
puts ans