s = gets.chomp.chars
n = s.size
set = []
(0...n).each do |l|
  (l...n).each do |r|
    set << s[l..r].join
  end
end
puts set.uniq.size