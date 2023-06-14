n = gets.to_i
tlr = n.times.map{ gets.split.map(&:to_i) }
ans = 0
tlr.combination(2) do |a, b|
    t1, l1, r1 = a
    t2, l2, r2 = b
    if t1 == 1 || t1 == 2
        if t2 == 1 || t2 == 3
            if l1 > r2
                next
            end
        else
            if l1 >= r2
                next
            end
        end
    else
        if l1 >= r2
            next
        end
    end

    if t1 == 1 || t1 == 3
        if t2 == 1 || t2 == 2
            if l2 > r1
                next
            end
        else
            if l2 >= r1
                next
            end
        end
    else
        if l2 >= r1
            next
        end
    end
    ans += 1
end
puts ans