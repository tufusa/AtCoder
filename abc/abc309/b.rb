require 'benchmark'
$n = gets.to_i
as = $n.times.map { gets.chomp.chars.map &:to_i }
res = as.map { _1.dup }

def prev(x, y)
  if x == 0 && y != $n - 1
    [x, y + 1]
  elsif y == $n - 1 && x != $n - 1
    [x + 1, y]
  elsif x == $n - 1 && y != 0
    [x, y - 1]
  else
    [x - 1, y]
  end
end

now = [0, 0]
while true
  prev = prev(*now)
  res = as[prev[1]][prev[0]]
  now = prev
  break if now[0] == 0 && now[1] == 0
end
print res
