n, k = gets.split.map &:to_i
as = gets.split.map &:to_i
sas = as.sort
sum = [0]
sas.each { sum << sum[-1] + _1 }
f = false
ok = true
sum.each do |s|
  if !f && s >= k
    f = true
  elsif f && s < k
    ok = false
    break
  end
end
if ok
  puts 'Yes'
  puts sas.join ?\s
  exit
end

ras = sas.reverse
sum = [0]
ras.each { sum << sum[-1] + _1 }
f = false
sum.each do |s|
  if !f && s >= k
    f = true
  elsif f && s < k
    puts 'No'
    exit
  end
end
puts 'Yes'
puts ras.join ?\s
