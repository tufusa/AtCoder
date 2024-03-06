n = gets.to_i
m = (n ** (1 / 3.0)).ceil
(1..m).reverse_each do |d|
  num = d * d * d
  next if num > n || num.digits != num.digits.reverse

  puts num
  exit
end
