n, s, d = gets.split.map(&:to_i)
j = n.times.map{ gets.split.map(&:to_i) }
j.each do |e|
    if e[0] < s and e[1] > d
        puts "Yes"
        exit
    end
end
puts "No"