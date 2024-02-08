n = gets.to_i
as = gets.split.map &:to_i
s = [0]
as.each{|a| s << s[-1] + a }
puts -s.min + s[-1]