w, b = gets.split.map &:to_i
l = w + b
pi = 'wbwbwwbwbwbw'.tr('wb', '01').chars.map &:to_i
pia = pi * 20
sum = nil
prev = nil
pia.each_cons(l) do |pian|
  sum = sum ? sum - prev + pian[-1] : pian.sum
  prev = pian[0]
  if sum == b
    puts 'Yes'
    exit
  end
end

puts 'No'