x, k, d = gets.split.map(&:to_i)
if x.abs >= k * d
    puts x.abs - k * d
else
    if (k - x.abs / d).even?
        puts (x.abs - x.abs / d * d).abs
    else
        puts (x.abs - (x.abs / d + 1) * d).abs
    end
end