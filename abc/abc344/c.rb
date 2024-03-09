n = gets.to_i
as = gets.split.map &:to_i
m = gets.to_i
bs = gets.split.map &:to_i
l = gets.to_i
cs = gets.split.map &:to_i
q = gets.to_i
xs = gets.split.map &:to_i

h = {}.tap { _1.default = false }
as.each do |a|
  bs.each do |b|
    cs.each do |c|
      h[a + b + c] = true
    end
  end
end

puts xs.map { h[_1] ? 'Yes' : 'No' }