# 木の最も長いパスの長さ = 木の直径
# 木の直径
# 1. あるノードuを選ぶ
# 2. uから一番遠いノードvを調べる
# 3. vから一番遠いノードwを調べる
# 4. u --> v が直径をなす
# 木を変形して一直線の直径に枝が付いている形にすると正当性が自明
# (どの頂点からでも最も遠いノードは両端のどちらかになるため)

n = gets.to_i
ab = (n - 1).times.map{ gets.split.map &:to_i }
$paths = Array.new(n){ [] }
ab.each do |a, b|
  $paths[a - 1] << b - 1
  $paths[b - 1] << a - 1
end
$seen = Array.new(n, false)

def farthest(now, dist)
  if dist == 0
    $seen.fill false
    $seen[now] = true
  end
  cands = [[now, dist]]
  $paths[now].each do |nx|
    next if $seen[nx]

    $seen[nx] = true
    cands << farthest(nx, dist + 1)
  end
  cands.max_by{ _1[1] }
end

f1 = farthest(0, 0)
f2 = farthest(f1[0], 0)
puts f2[1] + 1