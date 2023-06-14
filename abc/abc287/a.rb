n = gets.to_i
puts n.times.map{ gets.chomp }.count('For') > n / 2 ? 'Yes' : 'No'