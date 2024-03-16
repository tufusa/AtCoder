s = gets.chomp
puts (s[0] == '<' && s[-1] == '>' && s[1..-2].chars.uniq == ['=']) ? 'Yes' : 'No'