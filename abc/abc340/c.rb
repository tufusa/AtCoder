n = gets.to_i

$memo = {}

def t(x)
  return 0 if x == 1
  return 2 if x == 2
  return $memo[x] if $memo[x].nil?.!
  d = x / 2
  return $memo[x] = x + 2 * t(d) if x % 2 == 0
  $memo[x] = x + t(d) + t(d + 1)
end

puts t(n)