n, k = gets.split.map &:to_i
r = gets.split.map &:to_i
b = gets.split.map &:to_i
puts r.any?{ b.include? k - _1 } ? 'Yes' : 'No'