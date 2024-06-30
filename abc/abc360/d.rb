n, t = gets.split.map &:to_i
s = gets.chomp.chars.map &:to_i
xs = gets.split.map &:to_i
pxs = []
mxs = []
(0...n).each {|i| (s[i] == 0 ? mxs : pxs) << xs[i] }
pxs.sort!
mxs.sort!
ans = 0
d = 2 * t
ms = mxs.size
pxs.each do |px|
  r = px + d
  li = mxs.bsearch_index { _1 > px } || ms
  ri = mxs.bsearch_index { _1 > r } || ms
  ans += ri - li
end
puts ans
