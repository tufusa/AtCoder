n = gets.to_i
ans = []
(0..n).each do |x|
  (0..(n - x)).each do |y|
    (0..(n - x - y)).each do |z|
      ans << "#{x} #{y} #{z}"
    end
  end
end
puts ans