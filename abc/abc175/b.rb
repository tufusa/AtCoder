n = gets.to_i
l = gets.split.map(&:to_i)
ans = 0
l.combination(3) do |a, b, c|
    if (a != b) && (a != c) && (b != c) && (a + b > c) && (a + c > b) && (b + c > a)
        ans += 1
    end
end
puts ans