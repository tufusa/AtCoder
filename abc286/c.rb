n, a, b = gets.split.map &:to_i
s = gets.chomp.bytes
min = nil
(0...n).each do |start|
  left = start
  right = (left - 1) % n
  mon = start * a
  next if min && mon >= min
  while true
    mon += b if s[left] != s[right]
    break if min && mon >= min
    break if [0, 1].include? right - left
    left = (left + 1) % n
    right = (right - 1) % n
  end
  next if min && mon >= min
  min = mon if !min || mon < min
end
puts min
