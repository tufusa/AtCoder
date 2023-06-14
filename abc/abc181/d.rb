s = gets.chomp.chars.map(&:to_i).sort.slice_when{ |x, y| x != y } #数が大きい時のdigitsは極端に遅い,charsは速い
s = s.map{ |a| a.size <= 4 ? a : [a[0]] * 4 }.flatten
if s.size == 1
    if s[0] == 8
        puts "Yes"
        exit
    end
elsif s.size == 2
    if (s[0] * 10 + s[1]) % 8 == 0 || (s[1] * 10 + s[0]) % 8 == 0
        puts "Yes"
        exit
    end
else
    s.permutation(3) do |a, b, c|
        if (100 * a + 10 * b + c) % 8 == 0
            puts "Yes"
            exit
        end
    end
end
puts "No"