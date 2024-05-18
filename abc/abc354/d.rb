a, b, c, d = gets.split.map { _1.to_i + 1000000000 }
cnt = [0, 0, 0, 0]
lp = a % 4
cl = 0
cr = 0
if lp != 0
  (lp..3).each { cnt[_1] += 1; cl += 1 }
end
rp = (c - 1) % 4
if rp != 3
  (0..rp).each { cnt[_1] += 1; cr += 1 }
end
cst = (c - a - cl - cr) / 4
(0...4).each { cnt[_1] += cst }
cs = [
  ((d / 2) * 3 + (d % 2) * 2) - ((b / 2) * 3 + (b % 2) * 2),
  ((d / 2) * 3 + (d % 2)) - ((b / 2) * 3 + (b % 2)),
  d / 2 - b / 2,
  (d + 1) / 2 - (b + 1) / 2
]
puts cnt.zip(cs).map{ _1 * _2 }.sum