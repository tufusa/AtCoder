n, x = gets.split.map(&:to_i)
gets.chomp.each_char do |c|
    if c == "o"
        x += 1
    else
        x -= 1 if x > 0
    end
end
puts x