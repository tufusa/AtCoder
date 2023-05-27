h, w = gets.split.map(&:to_i)
puts (h == 1 || w == 1) ? (h * w) : ((h + 1) / 2) * ((w + 1) / 2)