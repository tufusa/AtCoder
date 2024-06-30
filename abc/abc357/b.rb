s = gets.chomp
n = s.size
l = s.chars.count { _1 =~ /[A-Z]/ }
puts (l > n - l ? s.upcase : s.downcase)
