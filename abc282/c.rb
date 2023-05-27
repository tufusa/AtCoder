n = gets.to_i
s = gets.chomp.chars
res = []
quot = false
s.each do |c|
    quot = !quot if c == '"'
    if !quot && c == ','
        res << '.'
    else
        res << c
    end
end
puts res.join
