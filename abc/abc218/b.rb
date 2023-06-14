pn = gets.split.map(&:to_i)
abc = ('a'..'z').to_a
pn.each{ print abc[_1 - 1] }