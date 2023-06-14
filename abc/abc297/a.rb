n, d = gets.split.map &:to_i
t = gets.split.map &:to_i
t.each_cons(2) do |x, y|
  if y - x <= d
    puts y
    exit
  end
end
puts -1
