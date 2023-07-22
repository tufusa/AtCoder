n = gets.to_i
s = gets.chomp.chars
ct = {}
s.each_with_index do |c, i|
  ct[c] ||= 1
  next if ct.values.sum < 3

  puts i + 1
  exit
end