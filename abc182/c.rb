n = gets.to_i.digits.map{ |i| i % 3 }
case n.sum % 3
when 0
    puts 0
when 1
    if n.include?(1)
        puts n.size == 1 ? -1 : 1
    else
        puts n.size == 2 ? -1 : 2
    end
when 2
    if n.include?(2)
        puts n.size == 1 ? -1 : 1
    else
        puts n.size == 2 ? -1 : 2
    end
end