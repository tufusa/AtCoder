s, t = gets.split
s = s.chars
(1...(s.size)).each do |w|
  (1..w).each do |c|
    if t == s.each_slice(w).map { _1[c - 1] || '' }.join
      puts 'Yes'
      exit
    end
  end
end
puts 'No'