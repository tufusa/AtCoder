n = gets.to_i
s = gets.chomp

os = s.split('-')

if !s.include?('-') || os.size == 0
  puts -1
else
  puts os.max_by(&:size).size
end