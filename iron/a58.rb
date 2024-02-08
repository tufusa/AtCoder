n, nq = gets.split.map &:to_i
qs = nq.times.map { gets.split.map &:to_i }
$bn = (n.bit_length - 1).then { 1 << _1 == n ? _1 : _1 + 1 }
$u = 1 << $bn
tree = Array.new(2 * $u - 1, 0)


def update(tree, idx, val)
  return if tree[idx] == val

  tree[idx] = val
  return if idx == 0

  parent = (idx - 1) / 2
  update tree, parent, tree[parent * 2 + 1, 2].max
end

def find(tree, l, r)
  find_sub tree, l, r, 0, 0, $u - 1
end

def find_sub(tree, l, r, now, now_l, now_r)
  return 0 if now_r < l || r <= now_l
  return tree[now] if l <= now_l && now_r < r

  mid = (now_l + now_r) / 2
  val_l = find_sub tree, l, r, now * 2 + 1, now_l, mid
  val_r = find_sub tree, l, r, now * 2 + 2, mid + 1, now_r
  [val_l, val_r].max
end

res = []

qs.each do |op, a, b|
  if op == 1
    update tree, $u - 1 + a - 1, b
  else
    res << find(tree, a - 1, b - 1)
  end
end

puts res