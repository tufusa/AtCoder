ss = 8.times.map{ gets.chomp.chars }.flatten
fi = ss.index '*'
x, y = fi % 8, fi / 8
puts "#{(('a'..'h').to_a[x])}#{8 - y}"