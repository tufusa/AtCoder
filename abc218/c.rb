n = gets.to_i
s = []
t = []
n.times do |y|
    gets.chomp.chars.each_with_index do |cell, x|
        s.push [x, y] if cell == "#"
    end
end
n.times do |y|
    gets.chomp.chars.each_with_index do |cell, x|
        t.push [x, y] if cell == "#"
    end
end

s.sort_by!{ [_1, _2] }
ms = s[0].clone
s.map!{ [_1[0] - ms[0], _1[1] - ms[1]] }

4.times do
    t.sort_by!{ [_1, _2] }
    mt = t[0].clone
    t.map!{ [_1[0] - mt[0], _1[1] - mt[1]] }
    if s == t
        puts "Yes"
        exit
    end
    t.map!{ [_1[1], -_1[0]] }
end
puts "No"