n = gets.to_i
as = gets.split.map &:to_i
qs = []
as.each do |a|
  qs << a
  while true
    break if qs.size <= 1

    if qs[-1] == qs[-2]
      q = qs.pop
      qs.pop
      qs << q + 1
    else
      break
    end
  end
end
puts qs.size