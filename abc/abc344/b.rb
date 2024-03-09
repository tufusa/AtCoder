ans = []
while true
  ans << gets.to_i
  break if ans[-1] == 0
end

puts ans.reverse