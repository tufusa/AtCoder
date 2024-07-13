n = gets.to_i
lrs = n.times.map { gets.split.map &:to_i }
as = []
sum = 0
lrs.each do |l, r|
  as << [l, r].min_by(&:abs)
  sum += as[-1]
end
if sum == 0
  puts 'Yes', as * ?\s
  exit
end

lrs.each_with_index do |(l, r), i|
  if sum < 0 && as[i] < r
    ad = [r, as[i] - sum].min
    sum += ad - as[i]
    as[i] = ad
  elsif sum > 0 && l < as[i]
    ad = [l, as[i] - sum].max
    sum += ad - as[i]
    as[i] = ad
  end
  if sum == 0
    puts 'Yes', as * ?\s
    exit
  end
end

puts 'No'
