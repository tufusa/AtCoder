s = gets.chomp
bs = s.chars.map.with_index{|x, i| x == 'B' ? i : nil }.compact
if (bs[0] + bs[1]) % 2 == 0
  puts 'No'
  exit
end
if s !~ /.*R.*K.*R.*/
  puts 'No'
  exit
end
puts 'Yes'