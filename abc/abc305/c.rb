h, w = gets.split.map &:to_i
ss = h.times.map{ gets.chomp.chars.map{ _1 == '#' } }
h.times do |y|
  w.times do |x|
    next if ss[y][x]
    c = 0
    c += 1 if y - 1 >= 0 && ss[y - 1]&.[](x)
    c += 1 if y + 1 < h && ss[y + 1]&.[](x)
    c += 1 if x - 1 >= 0 && ss[y][x - 1]
    c += 1 if x + 1 < h && ss[y][x + 1]
    if c >= 2
      puts "#{y + 1} #{x + 1}"
      exit
    end
  end
end