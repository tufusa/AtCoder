n, k = gets.split.map(&:to_i)
fri = n.times.map{ gets.split.map(&:to_i) }.sort_by(&:first)
fri.each do |f|
    if k < f[0]
        break
    else
        k += f[1]
    end
end
puts k