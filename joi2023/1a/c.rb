n = gets.to_i
s = gets.chomp.chars
now = 0
count = [0, 0, 0]
s.each do |c|
  if c == 'L'
    now -= 1
    now = 0 if now < 0
  elsif c == 'R'
    now += 1
    now = 2 if now > 2
  end
  count[now] += 1
end

puts count[2]