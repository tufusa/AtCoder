n = gets.to_i
hs = gets.split.map &:to_i
(1...n).each do |i|
  if hs[i] > hs[0]
    puts i + 1
    exit
  end
end
puts -1