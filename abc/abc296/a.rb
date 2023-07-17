n = gets.to_i
s = gets.chomp
puts (s !~ /MM/ && s !~ /FF/ ? 'Yes' : 'No')