s = gets.chomp
t = s.gsub(/ZONe/, "")
puts (s.size - t.size) / 4