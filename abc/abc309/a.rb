a, b = gets.split.map &:to_i
puts (a % 3 != 0 && b - a == 1 ? 'Yes' : 'No')