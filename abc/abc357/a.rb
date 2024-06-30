n, m = gets.split.map &:to_i
hs = gets.split.map &:to_i
hs.each_with_index do |h, i|
  if m < h
    puts i
    exit
  end
  m -= h
end
puts n