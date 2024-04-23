n = gets.to_i
as = gets.split.map &:to_i
m = gets.to_i
bs = gets.split.map &:to_i
ba = Array.new(m + 1, false)
bs.each { ba[_1] = true }
sc = 0
as.each do |a|
  sc += a
  sc = 0 if ba[sc]
end
puts sc