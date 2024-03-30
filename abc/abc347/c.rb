n, a, b = gets.split.map &:to_i
w = a + b
ds = gets.split.map { _1.to_i % w }.uniq.sort
ds.each_with_index do |d, i|
  if ds[-1] - d < a && (i == 0 || w - (d - ds[i - 1]) < a)
    puts 'Yes'
    exit
  end
end

puts 'No'