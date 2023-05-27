a, b, c = gets.split.map(&:to_i)
if c == 0
    if a > b
        puts "Takahashi"
    else
        puts "Aoki"
    end
else
    if a < b
        puts "Aoki"
    else
        puts "Takahashi"
    end
end