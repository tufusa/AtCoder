n = gets.to_i
d = n.times.map{ gets.split.map(&:to_i) }
res = 0
d.each do |e|
    if e[0] == e[1]
        res += 1
    else
        res = 0
    end
    if res == 3
        puts "Yes"
        exit
    end
end
puts "No"