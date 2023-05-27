h, w = gets.split.map(&:to_i)
a = h.times.map{ gets.split.map(&:to_i) }
sum_i = []
sum_j = []
a.each do |e|
    sum_i.push(e.sum) #sumは早い
end
a.transpose.each do |e|
    sum_j.push(e.sum)
end
i = 0
while(i < h) #forよりwhileが早い
    j = 0
    while(j < w)
        a[i][j] = sum_i[i] + sum_j[j] - a[i][j]
        j += 1
    end
    i += 1
end
a.each{ |e| puts e.map(&:to_s).join(" ") }