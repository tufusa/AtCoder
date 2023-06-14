n = gets.to_i
$paths = Array.new(n){ [] }
(n - 1).times do
  u, v = gets.split.map{ _1.to_i - 1 }
  $paths[u] << v
  $paths[v] << u
end

def valid?(node, parity)
  if parity == 0
    $paths[node].size >= 2
  elsif parity == 1
    $paths[node].size <= 2
  elsif parity == 2
    $paths[node].size == 2
  end
end

start = 0
ss = [start]
ss << $paths[ss[0]][0]
ss << ($paths[ss[1]] - [ss[0]])[0]

ss.each do |init_s|
  nodes = Array.new(n, nil)
  que = [[init_s, 0]]
  nodes[que[0][0]] = que[0][1]

  ok = true
  while !que.empty?
    now, parity = que.shift
    if !valid?(now, nodes[now])
      ok = false
      break
    end

    parity = (parity + 1) % 3
    $paths[now].each do |ne|
      next if nodes[ne] != nil

      que << [ne, parity]
      nodes[ne] = parity
    end
  end
  next if !ok

  res = []
  ok = true
  nodes.each_with_index do |n, i|
    if n == nil
      ok = false
      break
    end
    next if n != 0

    res << $paths[i].size
  end
  next if !ok

  puts res.sort.map(&:to_s).join ?\s
  exit
end