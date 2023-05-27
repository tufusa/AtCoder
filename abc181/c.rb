n = gets.to_i
points = n.times.map{ gets.split.map(&:to_i) }
points.combination(3) do |p1, p2, p3|
    if p1[0] == p2[0] || p1[0] == p3[0]
        if p1[0] == p2[0] && p1[0] == p3[0]
            puts "Yes"
            exit
        end
    else
        if Rational(p2[1] - p1[1], p2[0] - p1[0]) == Rational(p3[1] - p1[1], p3[0] - p1[0])
            puts "Yes"
            exit
        end
    end
end
puts "No"