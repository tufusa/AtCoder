a, b = gets.split
m = [a.to_i, b.to_i].min.to_s.size
a.reverse!
b.reverse!
for i in 0...m
    if a[i].to_i + b[i].to_i > 9
        puts "Hard"
        exit
    end
end
puts "Easy"