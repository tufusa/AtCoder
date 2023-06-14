n, x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
(1..n).each do |i|
    if i % 2 == 0
        a[i - 1] -= 1
    end
end
if a.sum <= x
    puts "Yes"
else
    puts "No"
end