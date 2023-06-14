require 'set'
n, q = gets.split.map &:to_i
qs = q.times.map{ gets.split.map &:to_i }
fs = Set.new
as = []
qs.each do |t, a, b|
    if t == 1
        fs << [a, b]
    elsif t == 2
        fs.delete [a, b]
    else
        as << (fs.include?([a, b]) && fs.include?([b, a]) ? 'Yes' : 'No')
    end
end
puts as