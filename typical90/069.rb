n, k = gets.split.map(&:to_i)
m = 10 ** 9 + 7
if n == 1
    puts k 
elsif n == 2
    puts k * (k - 1) % m
else
    puts k * (k - 1) * (k - 2).pow(n - 2, m) % m
end