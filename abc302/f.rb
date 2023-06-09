n, m = gets.split.map &:to_i
paths = Array.new(n + m){ [] }
n.times do |si|
  _ = gets.to_i
  gets.split.map{ _1.to_i - 1 }.each do |ni|
    paths[si] << n + ni
    paths[n + ni] << si
  end
end
que = [n]
seen = Array.new(n + m, false)
distance = Array.new(n + m, 10**20)
ans = nil
distance[n] = -2
while now = que.shift
  #seen[now] = true ここでは駄目 遅い
  dist = distance[now]
  if now == n + m - 1
    ans = dist / 2
    break
  end
  paths[now].each do |nx|
    nxdist = dist + 1
    next if seen[nx]
    next if nxdist > distance[nx]

    distance[nx] = nxdist
    que << nx
    seen[nx] = true # ここ
    # 読むことが確定した最も早いタイミングでseenを立てないと, この後の探索で
    # 本当は読むことが確定しているのにも関わらず読んでしまって無駄
  end
end
puts ans || -1