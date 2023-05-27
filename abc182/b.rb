n = gets.to_i
a = gets.split.map(&:to_i)
ans = 2
gcd = 0
(2..(a.max)).each do |i|
    res = a.sum{ |x| x % i == 0 ? 1 : 0 }
    if res > gcd
        gcd = res
        ans = i
    end
end
puts ans