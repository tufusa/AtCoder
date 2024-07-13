as = gets.split.map &:to_i
c = gets.chomp
as.delete_at ['Red', 'Green', 'Blue'].index(c)
puts as.min
