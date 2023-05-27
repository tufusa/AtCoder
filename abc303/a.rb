n = gets.to_i
s = gets.chomp
t = gets.chomp

def sim(x, y)
  x == y || (x == '1' && y == 'l') || (x == 'l' && y == '1') ||
    (x == '0' && y == 'o') || (x == 'o' && y == '0')
end

s.chars.zip(t.chars).each do |x, y|
  next if sim(x, y)

  puts 'No'
  exit
end

puts 'Yes'