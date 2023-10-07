n = gets.to_i
ss = n.times.map { [gets.chomp.chars.count('o'), _1] }
print ss.sort_by{ [-_1[0], _1[1]] }.map{ _1[1] + 1 }.join(?\s)