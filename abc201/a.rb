a = gets.split.map(&:to_i)
a.permutation(3).each do |c|
    if c[2] - c[1] == c[1] - c[0]
        puts "Yes"
        exit
    end
end
puts "No"