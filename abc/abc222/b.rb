n, pp = gets.split.map(&:to_i)
count = 0
gets.split.map(&:to_i).each do |i|
    if i < pp
        count += 1
    end
end
puts count