n, k = gets.split.map &:to_i
as = gets.split.map &:to_i
left, right = 0, 10**9
ans = while true
  t = (left + right) / 2
  cnt = as.sum { t / _1 }
  break cnt == k ? left : right if right - left == 1

  if cnt >= k
    right = t
  elsif cnt < k
    left = t
  end
end
puts ans