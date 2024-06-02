n, m = gets.split.map &:to_i
as = gets.split.map &:to_i
xs = n.times.map { gets.split.map &:to_i }
(xs.transpose.map &:sum).zip(as).each do |x, a|
  if x < a
    puts 'No'
    exit
  end
end

puts 'Yes'