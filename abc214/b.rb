s, t = gets.split.map(&:to_i)
ans = 0
(0..s).each do |a|
    (0..(s - a)).each do |b|
        (0..(s - a - b)).each do |c|
            if a * b * c <= t
                ans += 1
            else
                break
            end
        end
    end
end
puts ans