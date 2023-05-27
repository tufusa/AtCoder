n = gets.to_i
a = n.times.map{ gets.split.map &:to_i }
b = n.times.map{ gets.split.map &:to_i }
4.times do
  can = true
  (0...n).each do |i|
    (0...n).each do |j|
      if a[j][i] == 1 && b[j][i] == 0
        can = false
        break
      end
    end
    break if not can
  end
  if can
    puts 'Yes'
    exit
  end
  a = a.reverse.transpose
end
puts 'No'