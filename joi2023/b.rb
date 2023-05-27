n = gets.to_i
a, b, c, d = 4.times.map{ gets.split.map(&:to_i).sort }
res = []
a.each do |min|
    m1 = b.bsearch{ _1 >= min } || next
    m2 = c.bsearch{ _1 >= min } || next
    m3 = d.bsearch{ _1 >= min } || next
    res << [m1, m2, m3].max - min
end
b.each do |min|
    m1 = a.bsearch{ _1 >= min } || next
    m2 = c.bsearch{ _1 >= min } || next
    m3 = d.bsearch{ _1 >= min } || next
    res << [m1, m2, m3].max - min
end
c.each do |min|
    m1 = b.bsearch{ _1 >= min } || next
    m2 = a.bsearch{ _1 >= min } || next
    m3 = d.bsearch{ _1 >= min } || next
    res << [m1, m2, m3].max - min
end
d.each do |min|
    m1 = b.bsearch{ _1 >= min } || next
    m2 = c.bsearch{ _1 >= min } || next
    m3 = a.bsearch{ _1 >= min } || next
    res << [m1, m2, m3].max - min
end
puts res.min