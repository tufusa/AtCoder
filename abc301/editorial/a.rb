n = gets.to_i
s = gets.chomp
t_win = s.count 'T'
a_win = s.count 'A'

if t_win > a_win
  puts 'T'
  exit
elsif a_win > t_win
  puts 'A'
  exit
end

count = { 'T' => 0, 'A' => 0 }
s.each_char do |c|
  count[c] += 1
  if count['T'] == t_win
    puts 'T'
    exit
  elsif count['A'] == a_win
    puts 'A'
    exit
  end
end