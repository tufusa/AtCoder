n = gets.to_i
as = gets.split.map &:to_i
q = gets.to_i
qs = q.times.map { gets.split.map &:to_i }
l = (0...n).map do |i|
  [as[i], [ i == 0 ? :top : as[i - 1], i == n - 1 ? :tail : as[i + 1]]]
end.to_h

qs.each do |t, x, y|
  if t == 1
    fr, to = l[x]
    l[x][1] = y
    l[to][0] = y if to != :tail
    l[y] = [x, to]
  else
    fr, to = l[x]
    l.delete x
    l[fr][1] = to if fr != :top
    l[to][0] = fr if to != :tail
  end
end

now = l.find { _2[0] == :top }[0]
ans = []
while now != :tail
  ans << now
  now = l[now][1]
end
puts ans.join(?\s)