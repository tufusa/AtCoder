s = gets.chomp
pool = []
for i in 0...s.size
    temp = s.clone
    slice = temp.slice!(0, i)
    pool.push temp + slice
end
puts pool.minmax