h, w = gets.split.map &:to_i
a = h.times.map{ gets.chomp.chars }
b = h.times.map{ gets.chomp.chars }

(0...h).each do
  a.rotate!
  (0...w).each do |x_shift|
    a_shifted = a.map { |row| row.rotate(x_shift) }
    if a_shifted == b
      puts 'Yes'
      exit
    end
  end
end

puts 'No'
