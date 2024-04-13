l, r = gets.split.map &:to_i
ans = []
now = l
while true
  d = now == 0 ? 60 : (now ^ (now - 1)).bit_length - 1
  i = d
  j = now >> d
  bi = 1 << i
  tr = 0
  tr = bi * (j + 1)
  while tr > r
    i -= 1
    bi >>= 1
    j <<= 1
    tr = bi * (j + 1)
  end
  ans << [tr - bi, tr]
  break if tr == r
  if tr == r - 1
    ans << [tr, r]
    break
  end
  now = tr
end
puts ans.tap{ puts _1.size }.map { _1.join ?\s }