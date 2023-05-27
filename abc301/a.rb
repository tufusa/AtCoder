n = gets.to_i
s = gets.chomp
tw = s.count('T')
aw = s.count('A')
if tw > aw
  puts "T"
  exit
end
if aw > tw
  puts "A"
  exit
end
twn = 0
awn = 0
s.each_char do |c|
  if c == 'T'
    twn += 1
  else
    awn += 1
  end
  if twn == tw
    puts 'T'
    exit
  elsif awn == aw
    puts 'A'
    exit
  end
end