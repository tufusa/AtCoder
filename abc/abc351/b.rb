n = gets.to_i
as = n.times.map { gets.chomp.chars }
bs = n.times.map { gets.chomp.chars }
(0...n).each do |y|
  (0...n).each do |x|
    if as[y][x] != bs[y][x]
      puts "#{y + 1} #{x + 1} "
      exit
    end
  end
end