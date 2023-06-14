n, x = gets.split.map &:to_i
a = gets.split.map &:to_i
h = a.to_h{|ai| [ai, true]}
a.each do |ai|
  next if not h[ai - x]
  puts 'Yes'
  exit
end
puts 'No'