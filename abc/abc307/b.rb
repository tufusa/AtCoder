# frozen_string_literal: true

n = gets.to_i
ss = n.times.map{ gets.chomp }

(0...n).to_a.permutation(2).each do |i, j|
  s = ss[i] + ss[j]
  size = s.size
  if (0...(size / 2)).all? {|k| s[k] == s[size - k - 1]}
    puts 'Yes'
    exit
  end
end

puts 'No'