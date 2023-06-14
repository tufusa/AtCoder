n, l = gets.split.map &:to_i
k = gets.to_i
as = gets.split.map &:to_i
# "最小値の最大化"は解の二分探索
left = 0
right = l
while true
  mid = left + (right - left) / 2
  if left == mid
    puts mid
    exit
  end
  count = 0
  prev = 0
  can = as.each_with_index do |a, i|
    break false if n - i < k - count

    if a - prev >= mid
      count += 1
      prev = a
    end

    break false if l - prev < mid
    break true if count >= k
  end
  if can && count >= k
    left = mid
  else
    right = mid
  end
end