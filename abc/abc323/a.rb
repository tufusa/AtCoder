s = gets.chomp
puts (1..8).map { s[_1 * 2 - 1] == '0' }.all? ? 'Yes' : 'No'