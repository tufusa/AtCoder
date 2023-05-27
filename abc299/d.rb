$stdout.sync = true
n = gets.to_i
left = 1
right = n
while true
  mid = (right + left) / 2
  puts "? #{mid}"
  i = gets.to_i
  if i == 0
    left = mid
  else
    right = mid
  end
  if right - left == 1
    puts "! #{left}"
    exit
  end
end