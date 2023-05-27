map = 2.times.map{ gets.chomp.tr("#.", "10").chars.map(&:to_i) }
if map.flatten.count(1) > 2
    puts "Yes"
elsif map == [[1, 0], [0, 1]] or map == [[0, 1], [1, 0]]
    puts "No"
else
    puts "Yes"
end