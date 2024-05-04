require 'rbtree'

n, m, k = gets.split.map &:to_i
as = gets.split.map &:to_i
sm = RBTree[].tap { _1.default = 0 }
lg = RBTree[].tap { _1.default = 0 }
as[0...m].sort.each_with_index { |v, i| [sm, lg][i < k ? 0 : 1][v] += 1 }
ans = [sm.map { _1 * _2 }.sum]
smcnt = k
sum = ans[-1]
(0...(n - m)).each do |i|
  rm = as[i]
  mk = as[m + i]
  if sm[rm] > 0
    sm[rm] -= 1
    smcnt -= 1
    sum -= rm
    sm.delete rm if sm[rm] == 0
  else
    lg[rm] -= 1
    lg.delete rm if lg[rm] == 0
  end
  if mk <= sm.last[0]
    sm[mk] += 1
    smcnt += 1
    sum += mk
  else
    lg[mk] += 1
  end
  if smcnt == k - 1
    mv = lg.first[0]
    lg[mv] -= 1
    sm[mv] += 1
    sum += mv
    lg.delete mv if lg[mv] == 0
  elsif smcnt == k + 1
    mv = sm.last[0]
    sm[mv] -= 1
    lg[mv] += 1
    sum -= mv
    sm.delete mv if sm[mv] == 0
  end
  smcnt = k
  ans << sum
end
puts ans.join ?\s
