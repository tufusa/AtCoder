s = gets.chomp.gsub(/o/, "0").gsub(/x/, "1").gsub(/\?/, "2").split("").map(&:to_i)
ans = 0
must = []
s.each_with_index do |n, i|
    if n == 0
        must << i
    end
end
(0..9).to_a.repeated_permutation(4) do |c|
    f = 0
    must.each do |m|
        if not c.include?(m)
            f = 1
            break
        end
    end
    if f == 0
        c.each do |n|
            if s[n] == 1
                f = 1
                break
            end
        end
    end
    if f == 0
        ans += 1
    end
end
puts ans