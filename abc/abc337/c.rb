n = gets.to_i
as = gets.split.map &:to_i
ps = Array.new(n, nil)
now = nil
as.each_with_index do |a, i|
  if a == -1
    now = i
    next
  end

  ps[a - 1] = i
end
ans = []
while ans.size < n
  ans << now + 1
  now = ps[now]
end
puts ans.join ?\s