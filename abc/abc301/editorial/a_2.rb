n = gets.to_i
s = gets.chomp
win_count = (n / 2.0).ceil

count = { 'T' => 0, 'A' => 0 }
s.each_char do |c|
  count[c] += 1
  if count['T'] == win_count
    puts 'T'
    exit
  elsif count['A'] == win_count
    puts 'A'
    exit
  end
end