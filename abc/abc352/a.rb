n, x, y, z = gets.split.map &:to_i
puts (x <= z && z <= y || x >= z && z >= y ? 'Yes' : 'No')