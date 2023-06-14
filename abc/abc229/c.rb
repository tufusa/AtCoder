n, w = gets.split.map(&:to_i)
cheeses = n.times.map{ gets.split.map(&:to_i) }.sort_by(&:first).reverse
i = 0
weight = 0
delis = 0
while(true)
    if weight + cheeses[i][1] >= w
        delis += (w - weight) * cheeses[i][0]
        puts delis
        exit
    elsif i == n - 1
        delis += cheeses[i][0] * cheeses[i][1]
        puts delis
        exit
    else
        weight += cheeses[i][1]
        delis += cheeses[i][0] * cheeses[i][1]
    end
    i += 1
end