n, q = gets.split.map &:to_i
s = gets.chomp
top = 0
query = q.times.map { gets.split.map &:to_i }
ans = []
query.each do |t, x|
    if t == 1
        top = (top - x) % n
    else
        ans.push s[(top + x - 1) % n]
    end
end
puts ans