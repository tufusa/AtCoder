n, k = gets.split.map(&:to_i)
fri = n.times.map{ gets.split.map(&:to_i) }.sort_by(&:first)
fri.each do |f1|
    if k < f1[0]
        break
    else
        k += f1[1]
    end
end
puts k