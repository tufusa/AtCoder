n, a, x, y = gets.split.map(&:to_i)
if n <= a
    puts x * n
else
    puts x * a + y * (n - a)
end